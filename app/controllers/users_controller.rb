class UsersController < ApplicationController
  before_action :authenticate_admin!
  
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
    @users = User.paginate(:page => params[:page])
  end
  def search
    if params[:q].blank?
      @q = User.none.search
    elsif params[:inclusive]
      @q = User.with_all_skills(params[:q]).search(params[:q])
    else
      @q = User.search(params[:q])
    end
    @users = @q.result(distinct: true).paginate(:page => params[:page])
  end
  def new
    @user = User.new
    @user.skills.build
  end
  def show
    @user = User.find(params[:id])
    @skills = @user.skills.all
    @speaks = @user.speaks.all
    @events = @user.events.all
    @contracts = @user.contracts.all
    @attachments = @user.attachments.all
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Utilisateur modifié."
      redirect_to @user
    else
      render 'edit'
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = "#{User.model_name.human} supprimé."
    redirect_to users_path
  end

  private
  
    def user_params
      params.require(:user).permit(:change_status, :first_name, :last_name, :email, :address, :phone, :mobility, :international_mobility, :diploma, :profile, :experience, :salary, :availability, :interview_state, :interview_result, :comment, skill_ids: [], speaks_attributes: [:id, :level, :language_id, :_destroy], contracts_attributes: [:id, :type, :_destroy], events_attributes:[:date, :description], attachments_attributes:[:id, :resume, :_destroy])
    end

end
