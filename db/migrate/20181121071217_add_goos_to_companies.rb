class AddGoosToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :goods_id, :integer
  end
end
