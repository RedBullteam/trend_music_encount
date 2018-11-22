class UsersController < ApplicationController
# before_action :login_check, except: :complete
# @user.address_lines.build ←newのときは書いたほうがいい


  def show
    @user = User.active
  end

  def edit
    @user = User.active
  end

  def update
      @user = User.active
      # @user.id = current_user.id
    @user.update(user_params)
    redirect_to @user
  end

  def resignnation
  end

  def complete
     @user = current_user
    if @user.update(delete_flag:true)
      session.destroy
    end
  end
end

private
  def user_params
      params.require(:user).permit(:first_name, :last_name, :first_name_kana,:last_name_kana, :email, :telephone, address_lines_attributes:[:id,:postcode, :prefecture_id,:city,:address])
  end

  def login_check
      redirect_to new_user_registration_path unless user_signed_in?
  end