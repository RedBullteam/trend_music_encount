ActiveAdmin.register Commodity do
permit_params :id, :commodity, :upload_date, :video_url, :company_id
menu :parent => "Commodities"


form do |f|
 	f.inputs do
 		f.input :company
 		f.input :commodity
 		f.input :upload_date, as: :date_picker
		f.input :video_url
	end
	actions
end


end
