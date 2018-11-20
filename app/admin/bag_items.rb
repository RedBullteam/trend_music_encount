ActiveAdmin.register BagItem do
permit_params :id, :cd_product_id, :shopping_bag_id, :delivery_status_id, :quantity, :purchase_price, :delete_flag
menu :parent => "Users"


end
	