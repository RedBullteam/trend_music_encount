class Disc < ApplicationRecord
	belongs_to :cd_product
	has_many :songs, dependent: :destroy, primary_key: "id", foreign_key: "disc_id"
end
