class CdProduct < ApplicationRecord
<<<<<<< HEAD
	belongs_to :artist
	belongs_to :label
	has_many :discs, dependent: :destroy
    enum sale_status_id: {
		準備中:1, 販売中:2
    }
	#adminページの画像挿入処理
	has_attached_file :jacket_image, styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment :jacket_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
=======
	
end
>>>>>>> f648c2c770754e5234f7bc07a2b9baadf76046a2
