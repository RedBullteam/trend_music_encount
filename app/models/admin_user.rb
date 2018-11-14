class AdminUser < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, 
	     :recoverable, :rememberable, :validatable


	enum delete_flag: {
		user: 0,
		registration_user: 1
	}
end
