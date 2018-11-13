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
  end

  def update
  end

  def destroy
  end
   private
    def addressline_params
      params.require(:address_line).permit(:postcode, :city, :address)
    end
end
