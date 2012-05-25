class CourseEvaluationsController < ApplicationController
  
  before_filter :confirm_logged_in
  
  def list
    @course_evaluations = CourseEvaluation.all 
  end
  
  def show
    @course_evaluation = CourseEvaluation.find(params[:id])
  end
  
  def new
    @course_evaluation = CourseEvaluation.new
  end
  
  def create
    @course_evaluation = CourseEvaluation.new(params[:course_evaluation])
    @course_evaluation.save
    redirect_to ({:action => 'list'})
  end 
  
  def delete
    @course_evaluation = CourseEvaluation.find(params[:id])
    @course_evaluation.destroy
    redirect_to ({:action => 'list'})
  end 
end
