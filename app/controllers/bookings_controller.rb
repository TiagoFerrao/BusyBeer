class BookingsController < ApplicationController
  def create
    job = Job.find(params[:job])

    @booking = Booking.new(job: job, student: current_user)
    @booking.save!

    redirect_to job_path(@job)
  end

  def destroy
    @booking.destroy

    redirect_to job
  end

  def accept

    @booking_to_aprove = Booking.find(params[:booking_id])

    # reject all the other bookings for this job
    @job = @booking_to_aprove.job

    @job.bookings.each do |booking|
      booking == @booking_to_aprove ? @booking_to_aprove.accepted! : booking.rejected!
    end

    redirect_to job_path(@job)
  end

end
