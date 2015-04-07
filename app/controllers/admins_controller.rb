class AdminsController < ApplicationController
  before_action :authenticate_admin!

  def index
    if params[:approved] == "false"
      @admins = Admin.where(:approved => 'f')
    else
      @admins = Admin.all
    end
  end

  def switch
    b = !Admin.find(params[:id]).approved? 
    Admin.update(params[:id], :approved => b)
    redirect_to action: 'index'
  end
end