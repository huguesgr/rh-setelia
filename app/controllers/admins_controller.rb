class AdminsController < ApplicationController
  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      flash[:success] = "Admin créé."
      redirect_to @admin
    else
      render 'new'
    end
  end
  def new
	@admin = Admin.new
  end
  def index
	@admin = Admin.new
  end
  
  private
  
    def admin_params
      params.require(:admin).permit(:login, :password)
    end
end
