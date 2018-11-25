class Dorama < ApplicationRecord
    has_many :cd_products
	enum week_id:{
		月曜日:1,
		火曜日:2,
		水曜日:3,
		木曜日:4,
		金曜日:5,
		土曜日:6,
		日曜日:7
	}

	enum title_head_id:{
		あ:1,か:2,さ:3,た:4,な:5,は:6,ま:7,や:8,ら:9,わ:10
	}
	#adminページの画像挿入処理
	has_attached_file :dorama_image, styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment :dorama_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
