class CartItem < ApplicationRecord
	belongs_to :shopping_cart
	belongs_to :cd_product

	def total_price
		(cd_product.price).to_i * quantity
	end

end
