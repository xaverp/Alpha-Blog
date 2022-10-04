class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in? #THIS MAKES CURRENT_USER and LOGGED_IN? AVAILABLE TO OUR VIEW AS WELL

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id] #x || x = y If x evaluates to nil or false then x is assigned the value of y, and left unchanged otherwise.
    end

    def logged_in?
        !!current_user        
    end

    def require_user
        if !logged_in?
            flash[:alert] = "You must be logged in to perform that action"
            redirect_to login_path
        end
    end

end
