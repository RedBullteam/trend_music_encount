class AddressLinesController < ApplicationController
  def new
    @addressline = AddressLine.new
  end

  def create
    #binding.pry
    @addressline = AddressLine.new(addressline_params)
    @addressline.user_id=current_user.id
    @addressline.save
    redirect_to address_lines_path
  end

  def index
    #binding.pry
    @addresslines = current_user.address_lines

  end

  def edit
    @addressline = AddressLine.find(params[:id])
  end

  def update
    @addressline = AddressLine.find(params[:id])
    @addressline.user_id = current_user.id
    @addressline.update(addressline_params)
    redirect_to address_lines_path
  end

  def destroy
    addressline = AddressLine.find(params[:id])
    addressline.destroy
    redirect_to address_lines_path
  end

  private
  def addressline_params
    params.require(:address_line).permit(:postcode, :prefecture_id, :address,[:city,:_destroy, :id], :name )
  end
end
