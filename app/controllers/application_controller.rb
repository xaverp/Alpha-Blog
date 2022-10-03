class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in? #THIS MAKES CURRENT_USER and LOGGED_IN? AVAILABLE TO OUR VIEW AS WELL

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user        
    end

end
