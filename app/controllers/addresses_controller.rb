class AddressesController < ApplicationController
  def show
  end

  def new
  	@address = Address.new
  end

  def edit
  end

  private
  def address_params
	    	params.require(:address).permit(:user_id, :post, :a_address, :phone)
  end
end
