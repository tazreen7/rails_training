class ApplicationController < ActionController::Base
before_action :authenticate_user!

# def after_signed_in
   # redirect_to 'associates#show'


end
