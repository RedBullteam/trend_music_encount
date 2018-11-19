ActiveAdmin.register Song do
permit_params :id, :name, :genre_id, :track_number_id, :disc_id
menu :parent => "Discs"

form do |f|
	f.inputs do
		f.input :name
		f.input :genre
		f.input :track_number_id
		f.input :disc
	end
	actions
end

index do
	selectable_column
	column :name
	column :genre
	column :track_number_id
	column :disc
	actions
end
end
