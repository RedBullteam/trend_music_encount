class Good < ApplicationRecord
	has_many :cd_products, primary_key: "id", foreign_key: "goods_id"
	belongs_to :company
	paginates_per 12 #1ページあたりデフォルトで１２個表示
end
