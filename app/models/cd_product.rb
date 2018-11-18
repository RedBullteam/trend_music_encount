class CdProduct < ApplicationRecord
	belongs_to :artist
	belongs_to :label
	has_many :discs
    enum sale_status_id: {
		準備中:1, 販売中:2
    }
	
end
