class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.integer :company_id
      t.string :goods
      t.text :video_url
      t.date :upload_date

      t.timestamps
    end
  end
end
