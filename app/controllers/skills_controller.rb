class SkillsController < ApplicationController
  before_action :signed_in_user
  
  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      flash[:success] = "Skill ajouté."
      redirect_to @skill
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
      flash[:success] = "Compétence modifiée."
      redirect_to @skill
    else
      render 'edit'
    end
  end

  private
  
    def skill_params
      params.require(:skill).permit(:keyword)
    end
end