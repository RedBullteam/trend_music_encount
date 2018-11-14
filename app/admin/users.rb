ActiveAdmin.register User do
permit_params :id, :first_name, :last_name, :first_name_kana, :last_name_kana, :telephone, :email, :password, :address_lines_id, :delete_flag

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
		  
		end
		f.actions
	end

end