ActiveAdmin.register Artist do
permit_params :name

	#artist登録フォーム
	form do |f|
		f.inputs "Artist" do
		    f.input :name
		end
		f.actions
	end

end
