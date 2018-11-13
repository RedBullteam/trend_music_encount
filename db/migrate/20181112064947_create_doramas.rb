class CreateDoramas < ActiveRecord::Migration[5.2]
  def change
    create_table :doramas do |t|
      t.string :name
      t.integer :title_head_id
      t.text :dorama_image_url
      t.date :dorama_start_date
      t.integer :week_id

      t.timestamps
    end
  end
end
