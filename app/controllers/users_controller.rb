class UsersController < ApplicationController
  before_action :signed_in_user
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Utilisateur créé."
      redirect_to @user
    else
      render 'new'
    end
  end
  def index
    @users = User.paginate(page: params[:page])
  end
  def new
    @user = User.new
  end
  def show
    @user = User.find(params[:id])
    @skills = @user.skills.all
    @speaks = @user.speaks.all
  end
  def edit
    @user = User.find(params[:id])
    @skills = Skill.all
    @languages = Language.all
  end  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params) && @user.attributes = {'skill_ids' => []}.merge(params[:user] || {})
      flash[:success] = "Utilisateur modifié."
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  private
  
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end

end
