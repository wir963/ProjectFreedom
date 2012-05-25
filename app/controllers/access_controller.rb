class AccessController < ApplicationController
  
  before_filter :confirm_logged_in, :except =>[:login, :attempt_login, :logout]
  
  def menu
  end
  
  def index
    menu
    render ('menu')
  end

  def login
  end
  
  def attempt_login
    auth_user = AdminUser.authenticate(params[:user_name], params[:password])
    if auth_user
      session[:user_id] = auth_user.id
      session[:user_name] = auth_user.user_name
      flash[:notice] = "You are now logged in."
      redirect_to(:action => 'menu')
    else
    flash[:notice] = "Invalid username/password combination"
    redirect_to(:action => 'login')
    end
  end
  
  def logout
    session[:user_id] = nil
    session[:user_name] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end

 
  
end
