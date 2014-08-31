class SessionsController < ApplicationController

  def new
  end

  def create
    admin = Admin.find_by_login(params[:session][:login])
    if admin && admin.authenticate(params[:session][:password])
      sign_in admin
      redirect_to root_url
    else
      flash.now[:error] = 'Login ou mot de passe invalide'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end