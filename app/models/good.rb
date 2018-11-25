class Good < ApplicationRecord
	has_many :cd_products, primary_key: "id", foreign_key: "goods_id"
end
