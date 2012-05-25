class CoursesController < ApplicationController
  
  before_filter :confirm_logged_in
  
  def list
    @courses = Course.all
  end
  
  def show
    @course = Course.find(params[:id])
  end
  
  def new
    @course = Course.new
  end
  
  def create
    @course = Course.new(params[:course])
    @course.save
    redirect_to ({:action => 'list'})
  end 
end
