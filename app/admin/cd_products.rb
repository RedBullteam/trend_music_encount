ActiveAdmin.register CdProduct do
permit_params :id, :name, :price, :label_id, :stock_number, :release_era_tag_id, :sale_status_id, :artist_id, :release_date, :movie_id, :dorama_id ,:commodity_id, :jacket_image


form do |f|
 	f.inputs do
 		f.input :artist
 		f.input :name
 		f.input :price
 		f.input :label
 		f.input :stock_number
 		f.input :release_era_tag_id, as: :select, collection: {'1980年代' => 1, '1990年代'  => 2, '2000年代'  => 3, '2010年代' => 4}
 		f.input :sale_status_id
 		f.input :release_date, as: :date_picker
		f.input :movie_id
		f.input :dorama_id
		f.input :commodity_id
		f.input :jacket_image, :as => :file, :hint => f.object.new_record? ? "" : f.template.image_tag(f.object.jacket_image.url(:thumb))
	end
	actions
end


index do
 	selectable_column
 	column :id
 	column :artist
 	column :name
 	column :price
 	column :label
 	column :stock_number
 	column :release_era_tag_id
 	column :sale_status_id
 	column :release_date
 	column :movie_id
 	column :dorama_id
 	column :commodity_id
 	actions
end
menu if:
show do |cd_product|
	attributes_table do
		row :artist
    	row :name
    	row :price
    	row :label
    	row :stock_number
    	row :sale_status_id
    	row :release_date
    	row :jacket_image do
      		image_tag(cd_product.jacket_image.url(:medium))
    	end
	end
	attributes_table(*cd_product.class.columns.collect { |column| column.name.to_sym })
	panel "映画情報" do
		table_for cd_product.movies do
 		column :movie_name
 		column :title_head_id
 		column :movie_image
 		column :movie_release
 		end
 	end
 	panel "ドラマ情報" do
 		table_for cd_product.movies do
 		column :name
 		column :title_head_id
 		column :dorama_image
 		column :week_id
 		end
 	end
 	active_admin_comments
 end
 end
