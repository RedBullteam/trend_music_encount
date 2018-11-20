class AddAttachmentJacketImageToCdProducts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :cd_products do |t|
      t.attachment :jacket_image
    end
  end

  def self.down
    remove_attachment :cd_products, :jacket_image
  end
end
