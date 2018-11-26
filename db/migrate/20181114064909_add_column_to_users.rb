class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :first_name_kana, :string
    add_column :users, :last_name_kana, :string
    add_column :users, :telephone, :string
    add_column :users, :address_line_id, :integer
	add_column :users, :delete_flag, :boolean,default:false
	end
end
