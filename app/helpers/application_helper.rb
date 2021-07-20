module ApplicationHelper
    def current_user
        #@current_user ||= User.find_by(:user_id)
        User.find_by(id: session[:user_id])
    end

    def logged?
        # !!current_user
        !current_user.nil?
    end
end
