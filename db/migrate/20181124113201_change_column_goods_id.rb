class ChangeColumnGoodsId < ActiveRecord::Migration[5.2]
  def change
  	rename_column :cd_products, :goods_id, :good_id
  end
end
