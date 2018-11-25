class Good < ApplicationRecord
	has_many :cd_products, primary_key: "id", foreign_key: "good_id"
	belongs_to :company
end
