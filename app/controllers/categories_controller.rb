class CategoriesController < ApplicationController
  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "#{Category.model_name.human} ajoutée."
      redirect_to skills_path
    else
      render 'new'
    end
  end
  def new
    @category = Category.new
  end
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      flash[:success] = "#{Category.model_name.human} modifiée."
      redirect_to skills_path
    else
      render 'edit'
    end
  end
  def edit
    @category = Category.find(params[:id])
  end
  def destroy    
    @category = Category.find(params[:id])
    @category.destroy
    flash[:success] = "#{Category.model_name.human} supprimée."
    redirect_to skills_path
  end

  private
  
    def category_params
      params.require(:category).permit(:name)
    end
end
