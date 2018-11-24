class Movie < ApplicationRecord
    has_many :cd_products
	enum title_head_id:{
		あ:1,か:2,さ:3,た:4,な:5,は:6,ま:7,や:8,ら:9,わ:10
	}
	#adminページの画像挿入処理
	has_attached_file :movie_image, styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment :movie_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
