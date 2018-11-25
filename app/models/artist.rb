class Artist < ApplicationRecord
	has_many :cd_products, primary_key: "id", foreign_key: "artist_id"
end
