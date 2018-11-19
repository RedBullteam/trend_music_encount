class UsersController < ApplicationController

# @user.address_lines.build ←newのときは書いたほうがいい


  def show
    @user = User.active
  end

  def edit
    @user = User.active
  end

  def update
      @user = User.active
      # @user.id = current_user.
    @user.update(user_params)
    redirect_to @user
  end

  def resignnation
     @user = current_user
     p session.to_hash
     @user.update(delete_flag: true)
     @user.errors.full_messages
  end

  def complete
  end
end

private
def user_params
    params.require(:user).permit(:first_name, :last_name, :first_name_kana,:last_name_kana, :email, :telephone, address_lines_attributes:[:id,:postcode, :prefecture_id,:city,:address])
end
