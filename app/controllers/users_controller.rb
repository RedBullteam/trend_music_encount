class UsersController < ApplicationController
before_action :authenticate_user!, except: [:complete,:guide]
# @user.address_lines.build ←newのときは書いたほうがいい
  def guide
  end

  def show
    @user = User.find(current_user.id)
    @favorites = current_user.favorites
    @shopping_bags = current_user.shopping_bags
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
      @user = User.find(current_user.id)
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
      params.require(:user).permit(:first_name, :last_name, :first_name_kana,:last_name_kana, :email, :telephone, address_lines_attributes:[:id, :name, :postcode, :prefecture_id,:city,:address])
  end

