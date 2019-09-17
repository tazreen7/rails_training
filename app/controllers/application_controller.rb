class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    
  
    # Make the current_user method available to views also, not just controllers:
    helper_method :current_user
    
    # Define the current_user method:
    def current_user
        if session[:user_id]
            @current_user ||= User.find_by(email:session[:user_id])
          else
            @current_user = nil
          end
    end
end
