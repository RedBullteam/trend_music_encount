ActiveAdmin.register Company do
permit_params :id, :company

form do |f|
	f.inputs do
		f.input :company
	end
	actions
end

index do
	selectable_column
	id_column
	column :company
	column '商品数' do |company|
      company.goods.count
    end
	actions
end

show do |company|
    attributes_table(*company.class.columns.collect { |column| column.name.to_sym })
    panel "商品一覧" do
      table_for company.goods do
        column :goods
        column :video_url
      end
    end
    active_admin_comments
  end

end
