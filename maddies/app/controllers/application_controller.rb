class ApplicationController < ActionController::Base
 #allows me to use the logged_in? method in the view
  helper_method :logged_in?

	def current_user
		if session[:current_user_id]
		@user = User.find(session[:current_user_id])
    end
	end

#use this on the view side to not expose any info to the front end
	def logged_in?
		!!current_user
	end

end
