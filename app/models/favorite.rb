class Favorite < ApplicationRecord
	belongs_to :user
  belongs_to :cd_product
end
