ActiveAdmin.register Good do
permit_params :id, :company_id, :goods, :video_url, :upload_date

form do |f|
	f.inputs do
		f.input :goods
		f.input :company
		f.input :video_url
		f.input :upload_date, as: :date_picker
	end
	actions
end

index do
	selectable_column
	column :goods
	column :video_url
	actions
end


end
