class RemoveIntegerFromCdProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :cd_products, :integer, :string
  end
end
