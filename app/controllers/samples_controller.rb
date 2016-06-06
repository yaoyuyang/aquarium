class SamplesController < ApplicationController

  before_filter :signed_in_user

  # GET /samples
  # GET /samples.json
  def index

    @sample_type_id = params[:sample_type_id] ? params[:sample_type_id] : Sample.all.first.id
    @sample_type = SampleType.find(@sample_type_id)

    @cookie_name = "sample_search_string_#{@sample_type.name}".to_sym
    cookies[@cookie_name] ||= current_user.login

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: SamplesDatatable.new(view_context) }
    end

  end

  # GET /samples/1
  # GET /samples/1.json
  def show

    respond_to do |format|

      format.html {

        if params[:delete]

          i = Item.find(params[:delete])
          i.mark_as_deleted

          if i.errors.empty?
            flash[:notice] = "Deleted item #{i.id}."
          else
            flash[:warning] = "Could not delete #{i.id}: #{i.errors.full_messages.join(', ')}"
          end   

          i.reload

        end

        @sample = Sample.includes(:sample_type,items: [locator: [:wizard]]).find(params[:id])
        @sample_type = @sample.sample_type

        if params[:toggle] 
          @item = Item.find(params[:toggle])
          @item.inuse = @item.inuse > 0 ? 0 : 1;
          @item.save
        end

      }

      format.json { 

        render json: Sample
          .includes(field_values: :child_sample, sample_type: { field_types: { allowable_field_types: :sample_type } })
          .find(params[:id])
          .to_json(include: { 
            sample_type: { include: [ :object_types, { field_types: { include: { allowable_field_types: { include: :sample_type } } } } ] },
            field_values: { include: :child_sample }
          })

      }

    end

  end

  # GET /samples/new
  # GET /samples/new.json
  def new
    @sample = Sample.new
    @sample_type = SampleType.find(params[:sample_type])
  end

  # GET /samples/1/edit
  def edit
    @sample = Sample.find(params[:id])
    @sample_type = @sample.sample_type
  end

  def render_full_sample sid
    render json: Sample
      .includes(field_values: :child_sample, sample_type: { field_types: { allowable_field_types: :sample_type } })
      .find(sid)
      .to_json(include: { 
        sample_type: { include: { field_types: { include: { allowable_field_types: { include: :sample_type } } } } },
        field_values: { include: :child_sample }
      })
  end

  # POST /samples
  # POST /samples.json
  def create
    @sample = Sample.creator(params[:sample], current_user)
    if @sample.errors.empty?
      render_full_sample @sample.id
    else
      render json: { save_error: @sample.errors.full_messages }
    end
  end

  # PUT /samples/1
  # PUT /samples/1.json
  def update
    @sample = Sample.find(params[:sample][:id])
    @sample.updater(params[:sample],current_user)
    if @sample.errors.empty?
      render_full_sample @sample.id
    else
      render json: { save_error: @sample.errors.full_messages }
    end
  end

  # DELETE /samples/1
  # DELETE /samples/1.json
  def destroy

    @sample = Sample.find(params[:id])
    id = @sample.sample_type_id

    if @sample.items.length > 0 
      flash[:notice] = "Could not delete sample #{@sample.name} because there are items associated with it."
    else
      FolderContent.where(sample_id: @sample.id).destroy_all
      @sample.destroy
    end

    respond_to do |format|
      format.html { redirect_to samples_url(sample_type_id: id) }
      format.json { head :no_content }
    end
  end

  def project

    if !params[:name]

      @projects = Sample.uniq.pluck(:project).sort

    else

      @samples = Sample.where('project = ?', params[:name]).sort { |a,b|
        [ a.sample_type.name, a.name ] <=> [ b.sample_type.name, b.name ]
      }

    end

  end

  def spreadsheet
  end

  def schema sample_type

    fields = [ 'name', 'project' ]

    (1..8).each do |i| 
      fn = "field#{i}name".to_sym
      ft = "field#{i}type".to_sym 
      f = "field#{i}".to_sym 

      if sample_type[ft] != 'not used' && sample_type[ft] !=nil 
        fields.push sample_type[ft]
      else
        fields.push :unused
      end

    end

    fields.reject { |f| f == :unused }

  end

  def make_samples data

    samples = []

    if data.length == 0
      redirect_to spreadsheet_path, notice: "Samples not imported. File contains no parsable data"
    end

    name = data.shift[0]
    @sample_type = SampleType.find_by_name(name)
    @schema = schema @sample_type

    if !@sample_type
      redirect_to spreadsheet_path, notice: "Samples not imported. Could not find sample type #{name}"
    end

    data.each do |row|

      sample_name = row[0]
      project = row[1]

      if row.length != @schema.length
        redirect_to spreadsheet_path, notice: "Samples not imported. This row has the wrong number of fields: #{row}."
        return []
      elsif Sample.find_by_name(sample_name)
        redirect_to spreadsheet_path, notice: "Samples not imported. The sample name #{sample_name} is already taken."
        return []
      end

      sample = Sample.new
      sample.name = sample_name
      sample.project = project
      sample.user_id = current_user.id
      sample.sample_type_id = @sample_type.id

      (2..(@schema.length-1)).each do |i|
        ff = "field#{i-1}".to_sym
        sample[ff] = row[i]
      end

      samples.push sample

    end

    samples

  end

  def process_spreadsheet

    if !params[:spreadsheet]
      redirect_to spreadsheet_path, notice: "No path specified"
    else

      path = params[:spreadsheet].original_filename
      content = params[:spreadsheet].read
      @data = content.split(/[\n\r]+/).collect do |l|
        l.split(/,\s*/)
      end

      @samples = make_samples @data

      if @samples.length > 0
        @samples.each do |s|
          s.save
          SamplesHelper.upgrade(s, s.sample_type)
        end
      end

    end

  end

end

