class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
	      t.string :movie_name
		  t.integer :title_head_id
		  t.date :movie_release
	      t.attachment :movie_image
    	  t.timestamps
    end
  end
end