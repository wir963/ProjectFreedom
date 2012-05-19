class ProfessorsController < ApplicationController

  def list
    @professors = Professor.all
  end 
  
  def show
    @professor = Professor.find(params[:id])
  end

end
