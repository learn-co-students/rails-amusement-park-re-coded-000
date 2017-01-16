module ApplicationHelper
	def current_user
       User.find(session[:user_id]) if session[:user_id]
    end
    def signed_in?
		! session[:user_id].nil? && ! session[:user_id]=="" ? true : false
	end
end
