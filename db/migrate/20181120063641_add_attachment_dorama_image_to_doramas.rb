class AddAttachmentDoramaImageToDoramas < ActiveRecord::Migration[5.2]
  def self.up
    change_table :doramas do |t|
      t.attachment :dorama_image
    end
  end

  def self.down
    remove_attachment :doramas, :dorama_image
  end
end
