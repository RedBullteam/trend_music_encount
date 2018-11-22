class RemoveDeeteFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :delete_flag, :boolean
  end
end
