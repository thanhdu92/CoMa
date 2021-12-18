class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:name, :email, :address, :birthday, :department_id,
                                             { profile_attributes: %i[starting_date position] }])
  end
end
