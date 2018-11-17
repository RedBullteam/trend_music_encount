class Disc < ApplicationRecord
	belongs_to :cd_product
	has_many :songs

end
