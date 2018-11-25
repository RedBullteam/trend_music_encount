class CreateCommodities < ActiveRecord::Migration[5.2]
  def change
    create_table :commodities do |t|
    	 t.integer :company_id
   		 t.string :commodity
   		 t.date :upload_date
   		 t.text :video_url
      t.timestamps
    end
  end
end
