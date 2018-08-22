class PagesController < ApplicationController
  def home
    @jobs = Job.all

    @my_jobs = @jobs.where(user_id:current_user)

    if params[:query].present?
      @jobs_address = Job.where("address ILIKE ?", "%#{params[:query]}%")
      @jobs_title = Job.where("title ILIKE ?", "%#{params[:query]}%")
      if @jobs_address.length > @jobs_title.length
        @jobs = @jobs_address
      elsif @jobs_title.length + @jobs_address.length == 0
        @jobs = []
      else
        @jobs = @jobs_address
      end
    end

    if @jobs.empty?
      flash.now[:notice] = "Please try again..."
      @jobs = Job.all
    end

    if params.key?('category') == false
      @jobs = Job.where.not(latitude: nil, longitude: nil)
      @markers = @jobs.map do |job|
        {
          lat: job.latitude,
          lng: job.longitude,
          infoWindow: {
            content: render_to_string(partial: "/shared/job_map_info", locals: { job: job})
          }
        }
      end
    else
      filter = params['category']
      category_id = Category.where(name: filter).first.id
      @jobs = Job.where(category_id: category_id)
      @markers = @jobs.map do |job|
        {
          lat: job.latitude,
          lng: job.longitude,
          infoWindow: {
            content: render_to_string(partial: "/shared/job_map_info", locals: { job: job})
          }
        }
      end
    end
  end
end
