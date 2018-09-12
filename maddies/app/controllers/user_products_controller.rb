class UserProductsController < ApplicationController

  def add_cart
    @user_product = UserProduct.find(params[:id])
    buyer_product = @user_product.dup
    buyer_product.quantity = params[:quantity]
    @user_product.quantity -= params[:quantity].to_i
    @user_product.save
    current_cart << buyer_product
    redirect_to user_path(session[:current_user_id])
  end

  def index
    @user = current_user
    @user_products = UserProduct.all
  end

  def new
    @user_product = UserProduct.new
  end

  def create
    @user_product = UserProduct.create(user_id: session[:current_user_id])
    @user_product.update(user_product_params)
    redirect_to user_product_path(@user_product)
  end

  def show
    find_user_product
  end

  def edit
    find_user_product
  end

  def update
    find_user_product
    @user_product.update(user_product_params)
    redirect_to user_product_path(@user_product)
  end

  def destroy
    find_user_product
    @user_product.destroy
    redirect to user_products_path
  end

  private

  def find_user_product
    @user_product = UserProduct.find(params[:id])
  end

  def user_product_params
    params.require(:user_product).permit(:product_id,:price,:quantity)
  end
end
