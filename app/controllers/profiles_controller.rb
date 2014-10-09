class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      flash[:success] = "#{Profile.model_name.human} ajoutée."
      redirect_to new_profile_path
    else
      render 'new'
    end
  end

  private
  
    def profile_params
      params.require(:profile).permit(:label)
    end
end
