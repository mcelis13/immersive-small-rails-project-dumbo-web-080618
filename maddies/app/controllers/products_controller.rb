class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(user_id: session[:current_user_id])
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def show
    find_product
  end

  def edit
    find_product
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  private

  def find_product
    @product = Product.find_by(params[:id])
  end

  def product_params
    params.require(:product).permit(:name,:price,:description,:img_url)
  end

end
