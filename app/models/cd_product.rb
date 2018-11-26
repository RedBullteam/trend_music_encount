class CdProduct < ApplicationRecord

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

