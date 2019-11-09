class ProductsController < ApplicationController

  def new
  	@product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    @product.save
    redirect_to products_path
  end

  def index
    @products = Product.all
  end

  private

  def product_params
    params.require(:product).permit( :product_name, :product_image, :detail)
  end
# ここまで。この下にendがひとつだけあるのを確認して下さい。
end