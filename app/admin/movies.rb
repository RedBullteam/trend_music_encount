ActiveAdmin.register Movie do
permit_params :id, :movie_name, :title_head_id, :movie_release, :movie_image

form do |f|
	f.inputs do
		f.input :movie_name
		f.input :title_head_id
		f.input :movie_release, as: :date_picker
		f.input :movie_image, :as => :file, :hint => f.object.new_record? ? "" : f.template.image_tag(f.object.movie_image.url(:thumb))
	end
	actions
end



show do |movie|
	attributes_table do
		row :movie_name
    	row :title_head_id
    	row :movie_release
    	row :movie_image do
      		image_tag(movie.movie_image.url(:medium))
    	end
	end
end

end
