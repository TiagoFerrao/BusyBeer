class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

 def configure_permitted_parameters
   update_attrs = [:name, :name, :photo, :address, :birthday, :phone, :university, :description, :work_place, :profession, :current_password, :student]
   devise_parameter_sanitizer.permit :account_update, keys: update_attrs
 end

 def default_url_options
   { host: ENV["www.busybear.club"] || "localhost:3000" }
 end


end
