class CreateCdProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :cd_products do |t|
       t.string "name"
	   t.string "price"
	   t.integer "label_id"
	   t.integer "stock_number"
	   t.integer "release_era_tag_id"
	   t.integer "sale_status_id"
	   t.integer "artist_id"
	   t.date "release_date"
	   t.integer "movie_id"
	   t.integer "dorama_id"
	   t.integer "commodity_id"
	   t.datetime "created_at", null: false
	   t.datetime "updated_at", null: false
	   t.string "jacket_image_file_name"
	   t.string "jacket_image_content_type"
	   t.integer "jacket_image_file_size"
	   t.datetime "jacket_image_updated_at"

      t.timestamps
    end
  end
end
