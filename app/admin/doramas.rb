ActiveAdmin.register Dorama do
permit_params :id, :name, :title_head_id, :dorama_image_url, :dorama_start_date, :week_id

form do |f|
	f.inputs do
		f.input :name
		f.input :title_head_id
		f.input :dorama_image_url
		f.input :dorama_start_date, as: :date_picker
		f.input :week_id
	end
end

index do
	selectable_column
	column :name
	column :title_head_id
	column :dorama_image_url
	column :dorama_start_date
	column :week_id
end
end
