ActiveAdmin.register Genre do
permit_params :id, :name
menu :parent => "Discs"

form do |f|
	f.inputs do
		f.input :name
	end
	actions
end

index do
	selectable_column
	column :name
	actions
end
end
