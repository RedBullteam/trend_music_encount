class Company < ApplicationRecord
	has_many :goods, primary_key: "id", foreign_key: "company_id"
end
