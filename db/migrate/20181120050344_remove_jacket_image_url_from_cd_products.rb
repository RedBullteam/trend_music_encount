class RemoveJacketImageUrlFromCdProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :cd_products, :jacket_image_url, :text
  end
end
