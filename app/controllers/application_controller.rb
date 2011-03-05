class ApplicationController < ActionController::Base
  
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  protected

  def authorize
    unless User.find_by_id(session[:user_id])
#      if session[:user_id] != :logged_out
#
#        authenticate_or_request_with_http_basic('Depot') do |username, password|
#          user = User.authenticate(username, password)
#          session[:user_id] = user.id if user
#        end
#
#      else
        flash[:notice] = "Please log in"
        redirect_to :controller => 'admin', :action => 'login'
#      end
    end
  end

end
