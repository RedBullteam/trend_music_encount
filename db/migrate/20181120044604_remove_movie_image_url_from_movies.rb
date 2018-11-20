class RemoveMovieImageUrlFromMovies < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :movie_image_url, :text
  end
end
