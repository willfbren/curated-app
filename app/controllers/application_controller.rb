class ApplicationController < ActionController::Base

    include SessionsHelper
    # before_action(:check_login)

    # def check_login
    #     if session[:user_id] == nil
    #         redirect_to '/login'
    #     else
    #         @current_user = User.find(session[:user_id])
    #     end
    # end 

    
end
