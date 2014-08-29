class SessionsController < ApplicationController

  def new
  end

  def create
    admin = Admin.authenticate(params[:session][:login],
                             params[:session][:password])
    if admin.nil?
      flash.now[:error] = "Invalid login/password combination."
      @title = "Sign in"
      render 'new'
    else
      sign_in admin
      redirect_to admin
    end
  end

  def destroy
  end
end