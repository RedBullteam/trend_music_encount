class Commodity < ApplicationRecord
	has_many :cd_products, primary_key: "id", foreign_key: "commodity_id"
	belongs_to :company
end
