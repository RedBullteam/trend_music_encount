class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company
      t.integer :goods_id

      t.timestamps
    end
  end
end
