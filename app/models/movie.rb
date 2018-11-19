class Movie < ApplicationRecord
	has_attached_file :movie_image_id,
                    :styles      => { :medium => "300x300>", :thumb => "100x100>" }
	enum title_head_id:{
		あ:1,か:2,さ:3,た:4,な:5,は:6,ま:7,や:8,ら:9,わ:10
	}
end
