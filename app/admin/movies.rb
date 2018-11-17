ActiveAdmin.register Movie do
permit_params :id, :movie_name, :title_head_id, :movie_image_url, :movie_release

form do |f|
	f.inputs do
		f.input :movie_name
		f.input :title_head_id
		f.input :movie_image_url
		f.input :movie_release, as: :date_picker
	end
	actions
end

index do
	selectable_column
	column :movie_name
	column :title_head_id
	column :movie_image_url
	column :movie_release
	actions
end

end
