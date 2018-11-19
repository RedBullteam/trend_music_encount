class Company < ApplicationRecord
	has_many :goods, dependent: :destroy
end
