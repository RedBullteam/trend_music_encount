class CreateDoramas < ActiveRecord::Migration[5.2]
  def change
    create_table :doramas do |t|
      t.string :name
      t.integer :title_head_id
      t.date :dorama_start_date
      t.integer :week_id
      t.attachment :dorama_image

      t.timestamps
    end
  end
end