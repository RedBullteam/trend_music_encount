ActiveAdmin.register User do
permit_params :id, :first_name, :last_name, :first_name_kana, :last_name_kana, :telephone, :email, :password, :address_lines_id, :delete_flag, default: true

	#user登録フォーム
	form do |f|
		f.inputs "User" do
		    f.input :id
		    f.input :first_name
		    f.input :last_name
		    f.input :first_name_kana
		    f.input :last_name_kana
		    f.input :telephone
		    f.input :email
		    f.input :password
		    f.input :address_lines_id
		    f.input :delete_flag, as: :select, collection: User.delete_flags.keys
		    f.input :created_at
		    f.input :updated_at
		end
		f.actions
	end

	index do
		selectable_column
		id_column
		column :first_name
		column :last_name
		column :first_name_kana
		column :last_name_kana
		column :telephone
		column :email
		column :password
		column :address_lines_id
		column :delete_flag
		column :created_at
	    column :updated_at
		actions
	end

	show do
		attributes_table do
		row :id
		row :first_name
		row :last_name
		row :first_name_kana
		row :last_name_kana
		row :telephone
		row :email
		row :password
		row :address_lines_id
		row :delete_flag
		row :created_at
	    row :updated_at
		end
	end
end