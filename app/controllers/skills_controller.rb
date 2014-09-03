class SkillsController < ApplicationController
  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      flash[:success] = "Skill ajouté."
      redirect_to @skill
    else
      render 'new'
    end
  end
  def index
    @skills = Skill.all
  end
  def new
    @skill = Skill.new
  end

  private
  
    def skill_params
      params.require(:skill).permit(:keyword)
    end
end
