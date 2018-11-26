class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
  	create_table :favorites do |t|
      t.references :user, null:false
      t.references :cd_product, null:false
      t.text :video_url

      t.timestamps
  	end
  end
end