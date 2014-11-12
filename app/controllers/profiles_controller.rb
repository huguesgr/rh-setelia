class ProfilesController < ApplicationController
  before_action :authenticate_admin!

  def new
    @profile = Profile.new
  end
  def index
    @profiles = Profile.all
  end
  def edit
    @profile = Profile.find(params[:id])
  end 
  def update
    @profile = Profile.find(params[:id])
    if @profile.update_attributes(profile_params)
      flash[:success] = "#{Profile.model_name.human} modifié."
      redirect_to profiles_path
    else
      render 'edit'
    end
  end
  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      flash[:success] = "#{Profile.model_name.human} ajouté."
      redirect_to profiles_path
    else
      render 'new'
    end
  end
  def destroy    
    @profile = Profile.find(params[:id])
    @profile.destroy
    flash[:success] = "#{Profile.model_name.human} supprimé."
    redirect_to profiles_path
  end

  private
  
    def profile_params
      params.require(:profile).permit(:label)
    end
end
