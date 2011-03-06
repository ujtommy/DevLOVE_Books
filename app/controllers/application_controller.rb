class ApplicationController < ActionController::Base
  before_filter :authorize, :except => :login

  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery :secret => '8fc080370e56e929a2d5afca5540a0f7'
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  protected

  def authorize
    unless User.find_by_id(session[:user_id])
#      session[:orijinal_url] = request.request_uri
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
