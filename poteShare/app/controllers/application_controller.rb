class ApplicationController < ActionController::Base
before_action :search
 protect_from_forgery with: :null_session


def search
 @q = Room.ransack(params[:q])
   @search = @q.result(distinct: true)
end



before_action :configure_permitted_parameters, if: :devise_controller?

private

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
end


end