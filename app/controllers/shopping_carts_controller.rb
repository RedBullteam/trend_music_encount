class ShoppingCartsController < ApplicationController

  def show
  	 #binding.pry
  	@shopping_cart = current_user.shopping_cart
  	@cart_items = current_user.shopping_cart.cart_items
  	@address_lines = current_user.address_lines
  end

  def purchase
  	
  end
end
