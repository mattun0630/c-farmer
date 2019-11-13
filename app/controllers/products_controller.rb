class ProductsController < ApplicationController
   def index
     @tags = ActsAsTaggableOn::Tag.all
     if params[:tag]
      @products = Product.tagged_with(params[:tag])
     else
      @products = Product.all
     end
      @product = Product.new
  end

    private

  	def product_params
    	params.require(:product).permit(:product_image,:producer_id, :product_name, :detail, tag_list: [])
  	end

end
