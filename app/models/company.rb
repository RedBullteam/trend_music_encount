class Company < ApplicationRecord
	has_many :commodity, primary_key: "id", foreign_key: "commodity_id"
end
