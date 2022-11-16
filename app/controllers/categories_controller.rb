class CategoriesController < ApplicationController

  def index
    @categories = current_user.categories.order(:id)
    @payments = @categories.map(&:payments)
  end

  def show
    @category = current_user.categories.find(params[:id])
    @payments = @category.payments
  end

  def new
    @category = current_user.categories.build
  end

  def create
    @category = current_user.categories.build(category_params)

    if @category.save 
      redirect_to category_path(@category), notice: "Category saved!"
    else
      @errors = @category.errors.full_messages
      render :new
    end
  end

  def edit
    @category = current_user.categories.find(params[:id]) 
  end
  
  def update
    @category = current_user.categories.find(params[:id])
    
    if @category.update(category_params) 
      redirect_to category_path(@category), notice: "Category updated!"
    else
      @errors = @category.errors.full_messages
      render :edit
    end
  end

  private 

  def category_params
    params.require(:category).permit(:name, :icon, :author_id)
  end
end
