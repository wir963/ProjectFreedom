class AdminUsersController < ApplicationController
  
  def new
    @user = AdminUser.new
  end
    
  def create
    @user = AdminUser.new(params[:admin_user])
    @user.save
    redirect_to({:controller => 'access', :action => 'login'})
  end
    
  
end
