class RenameAddresslineIdColumnToShoppingBags < ActiveRecord::Migration[5.2]
  def change
  	rename_column :shopping_bags, :addressline_id, :address_line_id
  end
end
