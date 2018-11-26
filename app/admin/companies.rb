ActiveAdmin.register Company do
permit_params :id, :company
 menu :parent => "Commodities"

form do |f|
	f.inputs do
		f.input :company
	end
	actions
end

index do
	selectable_column
	id_column
	column :company
	actions
end


end
