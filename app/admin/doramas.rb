ActiveAdmin.register Dorama do
permit_params :id, :name, :title_head_id, :dorama_start_date, :week_id, :dorama_image

form do |f|
	f.inputs do
		f.input :name
		f.input :title_head_id
		f.input :dorama_start_date, as: :date_picker
		f.input :week_id
		f.input :dorama_image, :as => :file, :hint => f.object.new_record? ? "" : f.template.image_tag(f.object.dorama_image.url(:thumb))
	end
	actions
end

index do
	selectable_column
	column :name
	column :title_head_id
	column :dorama_start_date
	column :week_id
	actions
end

show do |dorama|
	attributes_table do
		row :name
    	row :title_head_id
    	row :dorama_start_date
    	row :week_id
    	row :dorama_image do
      		image_tag(dorama.dorama_image.url(:medium))
    	end
	end
end

end
