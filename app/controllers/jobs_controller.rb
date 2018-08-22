class JobsController < ApplicationController

  def index
    @jobs = Job.all
    @my_jobs = @jobs.where(user_id: current_user)
    @my_bookings = @jobs.where(student: current_user)
  end

   def destroy
     @job = Job.find(params[:id])
     if @job.destroy
       redirect_to jobs_path
     end
   end

  def update
  end

  def create
    session[:current_user_id]
    @job = Job.new(job_params)
    @job.client = current_user

    if @job.save
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  def show
    @job = Job.find(params[:id])

    @markers = [
            {
              lat: @job.latitude,
              lng: @job.longitude,
              infoWindow: {
                content: render_to_string(partial: "/shared/job_map_info", locals: { job: @job})
              }
            }]
    @selected_student= nil
    @job.bookings.each do |booking|
      if booking.accepted?
        @selected_student = booking.student
      end
    end
  end

  def new
    @job = Job.new
    @categories = Category.all
  end

  def search
    @job = job.where(title:params[:query])
  end

  private

  def job_params
    params.require(:job).permit(:title, :address, :description, :time, :latitude, :longitude, :duration, :price, :category_id)
  end
end
