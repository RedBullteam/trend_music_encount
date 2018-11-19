class AddressLinesController < ApplicationController
  def new
    @addressline = AddressLine.new
  end

  def create
    @addressline = AddressLine.new(addressline_params)
    @addressline.user_id=current_user.id
    @addressline.save
    redirect_to user_path(current_user.id)
  end

  def index
    @addresslines = AddressLine.all
  end

  def edit
     @addressline = AddressLine.find(params[:id])
  end

  def update
    @addressline = AddressLine.find(params[:id])
    @addressline.user_id = current_user.id
    @addressline.update(addressline_params)
    redirect_to user_path(current_user.id)
  end

  def destroy
  end
   private
    def addressline_params
      params.require(:address_line).permit(:postcode, :address,[:city,:_destroy, :id] )
    end
end
