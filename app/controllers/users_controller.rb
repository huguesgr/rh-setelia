class UsersController < ApplicationController
  before_action :signed_in_user
  
  def create
    @user = User.new(user_params)
    if params[:add_speak]
      @user.speaks.build
      render 'new'
    elsif @user.save
      flash[:success] = "Utilisateur créé."
      redirect_to @user
    else
      render 'new'
    end
  end
  def index
    @q = User.search(params[:q])
    @users = @q.result.includes(:skills)
  end
  def search
    index
    render :index
  end
  def new
    @user = User.new
    @user.speaks.build
    @user.skills.build
  end
  def show
    @user = User.find(params[:id])
    @skills = @user.skills.all
    @speaks = @user.speaks.all
  end
  def edit
    @user = User.find(params[:id])
  end  
  def update
    @user = User.find(params[:id])

    if params[:add_speak]
      unless params[:user][:speaks_attributes].blank?
        for attribute in params[:user][:speaks_attributes]
          @user.speaks.build(attribute.last.except(:_destroy)) unless attribute.last.has_key?(:id)
        end
      end
      @user.speaks.build
      render 'edit'
    elsif @user.update_attributes(user_params)
      flash[:success] = "Utilisateur modifié."
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  private
  
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :address, :phone, :mobility, :international_mobility, :experience, :salary, :contract, :availability, skill_ids: [], speaks_attributes: [:id, :level, :language_id, :_destroy])
    end

end
