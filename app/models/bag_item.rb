class BagItem < ApplicationRecord
	belongs_to :cd_product
	belongs_to :shopping_bag
	enum delivery_status_id: {
		受付:1, 発送準備中:2, 発送済:3
    }
    enum delete_flag: {
    購入済み: false,
    キャンセル: true
  }
end
