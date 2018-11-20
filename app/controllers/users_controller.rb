class UsersController < ApplicationController

# @user.address_lines.build ←newのときは書いたほうがいい
  def guide
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
      @user = User.find(params[:id])
      # @user.id = current_user.id
    @user.update(user_params)
    redirect_to @user
  end

  def resignnation
     @user = current_user
     @user.update(delete_flag:true)
  end
end

private
def user_params
    params.require(:user).permit(:first_name, :last_name, :first_name_kana,:last_name_kana, :email, :telephone, address_lines_attributes:[:id,:postcode, :prefecture_id,:city,:address])
end
