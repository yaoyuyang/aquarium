class Api::V2::JobsController < ApplicationController
  include ApiHelper

  def index
    # ARTIFICIAL LIMIT 200
    render json: api_ok(Job.all.limit(200))

  end

  def manager
    # TODO: MOVE SQL TO MODEL
    sql = "
      select
      j.id, j.user_id, j.state, j.created_at, j.updated_at, j.pc, j.group_id, j.submitted_by,
      vjot.operation_type_id as 'operation_type_id', vjot.name as 'operation_type_name', vjot.category as 'operation_type_category',
      vjassoc.n as 'operation_count',
      vja.assigned_by, vja.by_name, vja.by_login, vja.assigned_to, vja.to_name, vja.to_login, vja.created_at as 'assigend_at'
      from jobs j
      inner join view_job_operation_types vjot on vjot.job_id = j.id
      inner join view_job_associations vjassoc on vjassoc.job_id = j.id
      left join view_job_assignments vja on vja.job_id = j.id
      where j.pc in (-1,0)
      order by vja.to_name, vjot.name, vja.created_at
      limit 200
    "
    render json: api_ok(Job.find_by_sql sql)

  end

  def technician
    to_id = params[:id].to_i
    to_user = User.find(to_id) rescue nil
    render json: api_error( { "to_id" => ["invalid user"] } ) and return if !to_user

    # TODO: MOVE SQL TO MODEL
    sql = "
      select
      j.id, j.user_id, j.state, j.created_at, j.updated_at, j.pc, j.group_id, j.submitted_by,
      vjot.operation_type_id as 'operation_type_id', vjot.name as 'operation_type_name', vjot.category as 'operation_type_category',
      vjassoc.n as 'operation_count',
      vja.assigned_by, vja.by_name, vja.by_login, vja.assigned_to, vja.to_name, vja.to_login, vja.created_at as 'assigend_at'
      from jobs j
      inner join view_job_operation_types vjot on vjot.job_id = j.id
      inner join view_job_associations vjassoc on vjassoc.job_id = j.id
      inner join view_job_assignments vja on vja.job_id = j.id
      where vja.assigned_to=#{to_id} and j.pc in (-1,0)
      order by vja.to_name, vjot.name, vja.created_at
      limit 200
    "
    render json: api_ok(Job.find_by_sql sql)

  end

  def job
    # GET JOB
    id = params[:id].to_i
    job = Job.find(id) rescue nil
    render json: api_error( { "job_id" => ["invalid job"] } ) and return if !job

    render json: api_ok(job)
  end

  def assignment
    # GET JOB
    id = params[:id].to_i
    job = Job.find(id) rescue nil
    render json: api_error( { "job_id" => ["invalid job"] } ) and return if !job

    result = job.job_assignment

    render json: api_ok(result)
  end

  def assign
    @id = params[:id].to_i
    job = Job.find(@id) rescue nil
    render json: api_error( { "job_id" => ["invalid job"] } ) and return if !job

    @by = current_user.id rescue nil
    @to = params[:to].to_i

    api_ok(job_post_assignment)
    return
  end

  def unassign
    @id = params[:id].to_i
    job = Job.find(@id) rescue nil
    render json: api_error( { "job_id" => ["invalid job"] } ) and return if !job

    @by = current_user.id rescue nil
    @to = nil

    api_ok(job_post_assignment)
    return
  end

private

  def job_post_assignment
    jal = JobAssignmentLog.new
    jal.job_id = @id
    jal.assigned_by = @by
    jal.assigned_to = @to

    jal.save!

    if jal.id
      result = api_ok(jal)
    else
      result = api_error(jal.errors)
    end

    render json: result
  end

end