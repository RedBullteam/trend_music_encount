ActiveAdmin.register AddressLine do
permit_params :user_id, :name, :postcode, :prefecture_id, :city, :address, :created_at, :updated_at
menu :parent => "Users"
form do |f|
	f.inputs do
		f.input :user
		f.input :name
		f.input :postcode
		f.input :prefecture_id
		f.input :city
		f.input :address
		f.input :created_at
		f.input :updated_at
	end
	actions
end

index do
	selectable_column
	column :user
	column :name
	column :postcode
	column :prefecture_id
	column :city
	column :address
	column :created_at
	column :updated_at
	actions
end

end
