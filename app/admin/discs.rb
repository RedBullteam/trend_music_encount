ActiveAdmin.register Disc do
permit_params :id, :disc, :cd_product_id
menu :parent => "Discs"
form do |f|
	f.inputs do
		f.input :disc
		f.input :cd_product
	end
	actions
end

index do
	selectable_column
	column :disc
	column :cd_product
	actions
end

show do |disc|
	attributes_table(*disc.class.columns.collect { |column| column.name.to_sym })
	panel "曲一覧" do
		table_for disc.songs do
		column :genre
		column :track_number_id
		column :name
		end
	end

	panel "CDの商品詳細" do
		table_for disc.cd_product do
		column :artist
		column :name
		column :label
		column :stock_number
		column :release_era_tag_id
		column :sale_status_id
		column :jacket_image_url
		column :release_date
		column :movie_id
		column :dorama_id
		column :goods_id
		end
	end
	active_admin_comments
end

end
