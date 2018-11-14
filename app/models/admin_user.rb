class AdminUser < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, 
	     :recoverable, :rememberable, :validatable


	enum delete_flag: {
		登録中ユーザー: 0,
		退会ユーザー: 1
	}
end
