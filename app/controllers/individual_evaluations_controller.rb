class IndividualEvaluationsController < ApplicationController

  before_filter :confirm_logged_in
  
  def list
    @ind_eval = IndividualEvaluation.all
  end
  
  def show
    @ind_eval = IndividualEvaluation.find(params[:id])
  end
  
  def new
    @ind_eval = IndividualEvaluation.new
  end

  def create
    @ind_eval = IndividualEvaluation.new(params[:individual_evaluation])
    @ind_eval.save
    redirect_to ({:controller => 'courses', :action => 'list'})
    #this is not complete - need to add conditions if save fails
  end
end
