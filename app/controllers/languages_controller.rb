class LanguagesController < ApplicationController
  before_action :authenticate_admin!
  
  def create
    @language = Language.new(language_params)
    if @language.save
      flash[:success] = "Langage ajouté."
      redirect_to @language
    else
      render 'new'
    end
  end
  def show
    @language = Language.find(params[:id])
  end
  def edit
    @language = Language.find(params[:id])
  end 
  def new
    @language = Language.new
  end

  private
  
    def language_params
      params.require(:language).permit(:name)
    end
end
