class RemoveDoramaImageUrlFromDoramas < ActiveRecord::Migration[5.2]
  def change
    remove_column :doramas, :dorama_image_url, :text
  end
end
