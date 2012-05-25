class ProfessorsController < ApplicationController

  before_filter :confirm_logged_in

  def list
    @professors = Professor.all
  end 
  
  def show
    @professor = Professor.find(params[:id])
  end

end
