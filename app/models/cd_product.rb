class CdProduct < ApplicationRecord
	belongs_to :release_era_tag
	belongs_to :artist
	belongs_to :label
	has_many :discs, dependent: :destroy
	has_many :favorites, dependent: :destroy
	has_many :users,through: :favorites
    enum sale_status_id: {
		準備中:1, 販売中:2
    }
    def favorited_by?(user)
          favorites.where(user_id: user.id).exists?
        end
	#adminページの画像挿入処理
	has_attached_file :jacket_image, styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment :jacket_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
