class CartItemsController < ApplicationController
	def create
  	# binding.pry
  	cart_item = CartItem.new
  	cart_item.shopping_cart_id = current_user.shopping_cart.id
  	cart_item.cd_product_id = params["cd_product_id"].to_i
  	cart_item.quantity = 1
  	cart_item.save
  	redirect_to shopping_cart_path(current_user.shopping_cart.id)
  end

  def destroy
  	cart_item = CartItem.find(params[:id])
  	cart_item.destroy
  	redirect_to shopping_cart_path(current_user.shopping_cart.id)
  end

  def update
  	#binding.pry
  	@cart_item = CartItem.find(params[:id])
  	@cart_item.update(cart_item_params)
  	redirect_to shopping_cart_path(current_user.shopping_cart.id)
  end

  private
  def cart_item_params
  	params.require(:cart_item).permit(:cd_product_id, :quantity, :shopping_cart_id)
  end
end
