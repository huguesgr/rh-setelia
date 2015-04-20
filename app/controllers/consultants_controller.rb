class ConsultantsController < ApplicationController
  before_action :authenticate_admin!

  def new
    @consultant = Consultant.new
  end
  def index
    @consultants = Consultant.all
  end
  def edit
    @consultant = Consultant.find(params[:id])
  end 
  def update
    @consultant = Consultant.find(params[:id])
    if @consultant.update_attributes(consultant_params)
      flash[:success] = "#{Consultant.model_name.human} modifié."
      redirect_to consultants_path
    else
      render 'edit'
    end
  end
  def create
    @consultant = Consultant.new(consultant_params)
    if @consultant.save
      flash[:success] = "#{Consultant.model_name.human} ajouté."
      redirect_to consultants_path
    else
      render 'new'
    end
  end
  def destroy    
    @consultant = Consultant.find(params[:id])
    @consultant.destroy
    flash[:success] = "#{Consultant.model_name.human} supprimé."
    redirect_to consultants_path
  end

  private
  
    def consultant_params
      params.require(:consultant).permit(:label)
    end
end
