ActiveAdmin.register Artist do
permit_params :id,:name

	#artist登録フォーム
	form do |f|
		f.inputs "Artist" do
			f.input :id
		    f.input :name
		end
		f.actions
	end

	index do
		selectable_column
		id_column
		column :name
		column 'CD枚数' do |artist|
			artist.cd_products.count
		end
		column :created_at
    	column :updated_at
    	actions
	end
end
