class ShoppingCart < ApplicationRecord
	has_many :cart_items, dependent: :destroy
	belongs_to :user

	def sum_total_price
		cart_items.to_a.sum { |cart_item| cart_item.total_price }
	end
end
