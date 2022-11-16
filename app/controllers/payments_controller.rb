class PaymentsController < ApplicationController
  
  def index
    #@categories = Category.find(params[:category_id])
    @payments = current_user.payments.where(categories: params[:category_id])
  end

  def show; end

  def new
    @payment = current_user.payments.build
    @categories = current_user.categories.order(:id)
    @user = current_user.id
    #@categories = Category.find(params[:category_id])
  end

  def edit 
    @payment = current_user.payments.find(params[:id])
  end

  def create
    @payment = current_user.payments.build(pay_params)

    if @payment.save 
      redirect_to categories_path(@categories, @payment), notice: "Payment Created!"
    else 
      @errors = @payment.errors.full_messages 
      render :new
    end
  end

  def update
    @payment = current_user.payments.find(params[:id])

    if @payment.update(pay_params) 
      redirect_to category_payment_path(@payment), notice: "Payment Updated!"
    else 
      @errors = @payment.errors.full_messages 
      render :edit
    end 
  end

  private 

  def pay_params
    params.require(:payment).permit(:name, :amount, :category_id)
  end
end
