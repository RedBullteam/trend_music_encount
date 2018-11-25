class Good < ApplicationRecord
	has_many :cd_products
	belongs_to :company
end
