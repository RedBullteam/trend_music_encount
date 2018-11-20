ActiveAdmin.register Good do
permit_params :id, :company_id, :goods, :upload_date
menu :parent => "Goods"
form do |f|
	f.inputs do
		f.input :goods
		f.input :company
		f.input :upload_date, as: :date_picker
	end
	actions
end

index do
	selectable_column
	column :goods
	actions
end

show do |good|
	attributes_table do
		row :goods
    	row :company
    	row :upload_date
	end
end

end
