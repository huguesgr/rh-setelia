class EventsController < ApplicationController
  before_action :authenticate_admin!
  before_filter :load_user, :only => [:create, :new]

  def create
    @event = @user.events.build(event_params)
    if @event.save
      flash[:success] = "#{Event.model_name.human} ajouté."
      redirect_to @user
    else
      render 'new'
    end
  end
  def new
    @event = @user.events.build
  end
  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      flash[:success] = "#{Event.model_name.human} modifié."
      @user = User.find(@event.user_id)
      redirect_to @user
    else
      render 'edit'
    end
  end
  def edit
    @event = Event.find(params[:id])
  end
  def destroy    
    @event = Event.find(params[:id])
    @event.destroy
    flash[:success] = "#{Event.model_name.human} supprimé."
    @user = User.find(@event.user_id)
    redirect_to @user
  end

  private
  
    def event_params
      params.require(:event).permit(:description, :date, :user_id)
    end

    def load_user
      @user = User.find(params[:user_id])
    end
end
