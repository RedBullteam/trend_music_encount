class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :movie_name
      t.integer :title_head_id
      t.text :movie_image_url
      t.date :movie_release

      t.timestamps
    end
  end
end
