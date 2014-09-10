class SkillsController < ApplicationController
  before_action :signed_in_user
  
  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      flash[:success] = "#{Skill.model_name.human} ajoutée."
      redirect_to skills_path
    else
      render 'new'
    end
  end
  def show
    @skill = Skill.find(params[:id])
  end
  def edit
    @skill = Skill.find(params[:id])
  end 
  def index
    @skills = Skill.all
  end
  def new
    @skill = Skill.new
  end
  def update
    @skill = Skill.find(params[:id])
    if @skill.update_attributes(skill_params)
      flash[:success] = "#{Skill.model_name.human} modifiée."
      redirect_to skills_path
    else
      render 'edit'
    end
  end
  def destroy    
    @skill = Skill.find(params[:id])
    @skill.destroy
    flash[:success] = "#{Skill.model_name.human} supprimée."
    redirect_to skills_path
  end

  private
  
    def skill_params
      params.require(:skill).permit(:keyword, :category_id)
    end
end