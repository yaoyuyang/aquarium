class Job < ActiveRecord::Base

  attr_accessible :arguments, :sha, :state, :user_id, :pc, :submitted_by, :group_id, :desired_start_time, :latest_start_time, :metacol_id

  def self.NOT_STARTED
    -1
  end

  def self.COMPLETED
    -2
  end

  has_many :logs
  has_many :touches
  belongs_to :user
  belongs_to :metacol
  has_many :takes

  def self.params_to_time p

    DateTime.civil_from_format(:local,
      p["dt(1i)"].to_i, 
      p["dt(2i)"].to_i,
      p["dt(3i)"].to_i,
      p["dt(4i)"].to_i,
      p["dt(5i)"].to_i).to_time

  end

  def status
    if self.pc >= 0
      status = 'ACTIVE'
    elsif self.pc == Job.NOT_STARTED
      status = 'PENDING'
    else
      entries = (self.logs.reject { |log| 
        log.entry_type != 'ERROR' && log.entry_type != 'ABORT' && log.entry_type != 'CANCEL' 
      }).collect { |log| log.entry_type }
      if entries.length > 0
        status = entries[0] == 'ERROR' ? entries[0] : entries[0] + "ED"
      else
        status = "COMPLETED"
      end
    end
    return status
  end

  def backtrace
    JSON.parse self.state, symbolize_names: true
  end

  def append_steps steps
    bt = self.backtrace
    bt.concat steps
    self.state = bt.to_json
    self.save
  end

  def append_step step
    bt = self.backtrace
    bt.push step
    self.state = bt.to_json
    self.save 
  end

  def submitter
    u = User.find_by_id(self.submitted_by)
    if u
        u.login
    else
        "?"
    end
  end

  def doer
    u = User.find_by_id(self.user_id.to_i)
    if u
        u.login
    else
        "?"
    end
  end

  def arguments
    begin
      if /\.rb$/ =~ self.path
        (JSON.parse(self.state)).first["arguments"]
      else
        (JSON.parse(self.state))['stack'].first.reject { |k,v| k == 'user_id' }
      end
    rescue Exception => e
      "unable to parse arguments"
    end
  end

  def start_link el

    if /\.rb$/ =~ self.path

      if self.pc == Job.NOT_STARTED 
        "<a href='/krill/start?job=#{self.id}'>#{el}</a>".html_safe
      else 
        "<a href='/krill/ui?job=#{self.id}'>#{el}</a>".html_safe
      end 

    else 

      if self.pc == Job.NOT_STARTED 
        "<a href='/interpreter/advance?job=#{self.id}'>#{el}</a>".html_safe 
      elsif self.pc != Job.COMPLETED 
        "<a href='/interpreter/current?job=#{self.id}'>#{el}</a>".html_safe 
      end 

    end 

  end

  def remove_types p

    case p
      when String, Fixnum, Float
        p
      when Hash
        h = {}
        p.keys.each do |key|
          h[key.to_s.split(' ')[0].to_sym] = remove_types(p[key])
        end
        h
      when Array
        p.collect do |a|
          remove_types a
        end
    end

  end

  def set_arguments a

    if /\.rb$/ =~ self.path
      self.state = [{operation: "initialize", arguments: (remove_types a), time: Time.now}].to_json
    else
      raise "Could not set arguments of non-krill protocol"
    end

  end

  def return_value

    if /\.rb$/ =~ self.path

      begin
        @rval = JSON.parse(self.state, symbolize_names: true).last[:rval] || {}
      rescue
        @rval = { error: "Could not find return value." }
      end      

    else

      entries = self.logs.reject { |l| l.entry_type != 'return' }
      if entries.length == 0
        return nil
      else
        JSON.parse(entries.first.data,:symbolize_names => true)
      end

    end

  end

end
