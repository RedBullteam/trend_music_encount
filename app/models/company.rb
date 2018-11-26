class Company < ApplicationRecord
	has_many :commodities, primary_key: "id", foreign_key: "company_id"
end
