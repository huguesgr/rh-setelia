class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end
  def index
    @profiles = Profile.order(:label).all
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      flash[:success] = "#{Profile.model_name.human} ajoutée."
      redirect_to profiles_path
    else
      render 'new'
    end
  end

  private
  
    def profile_params
      params.require(:profile).permit(:label)
    end
end
