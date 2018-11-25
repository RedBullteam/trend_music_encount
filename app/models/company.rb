class Company < ApplicationRecord
	has_many :goods, primary_key: "id", foreign_key: "goods_id"
end
