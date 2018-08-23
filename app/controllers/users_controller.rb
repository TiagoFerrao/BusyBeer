class UsersController < ApplicationController
  before_action :fetch_user


  def show
    @my_jobs = Job.where(client:current_user)
    @my_bookings = Booking.where(student:current_user)

  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  # def destroy
  #   session[:user_id] = nil
  #   @user.destroy
  #   redirect_to root_path
  # end

  private

  def user_params
    params.require(:user).permit(:name, :email, :address, :birthday, :phone, :photo, :photo_cache, :student)
  end

  def fetch_user
    @user = User.find(params[:id])
  end
end
