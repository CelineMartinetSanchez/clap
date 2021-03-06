class QuizController < ActionController::Base

	protect_from_forgery with: :exception
	before_filter :configure_permitted_parameters, if: :devise_controller?
	before_filter :authenticate_user!
	
	protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :birth_date) }
  	devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :birth_date) }
  end
end
