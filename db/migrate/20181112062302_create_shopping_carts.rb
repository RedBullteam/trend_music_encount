class CreateShoppingCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_carts do |t|
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updatede_at

      t.timestamps
    end
  end
end
