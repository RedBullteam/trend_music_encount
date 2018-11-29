class ShoppingBag < ApplicationRecord
	has_many :cart_items, dependent: :destroy
	belongs_to :user
	belongs_to :address_line
	has_many :bag_items
end
