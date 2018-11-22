class FavoritesController < ApplicationController
   def create
            cd_product = CdProduct.find(params[:cd_product_id])
            favorite = current_user.favorites.new(cd_product_id: cd_product.id)
            favorite.save
            redirect_to cd_product_path(cd_product)
        end
        def destroy
            cd_product = CdProduct.find(params[:cd_product_id])
            favorite = current_user.favorites.find_by(cd_product_id: cd_product.id)
            favorite.destroy
            redirect_to cd_product_path(cd_product)
        end
  def index
  	@favorites = Favorites.all
  end
end
