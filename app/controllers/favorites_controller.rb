class FavoritesController < ApplicationController
  def create
            user = current_user
            cd_product = CdProduct.find(params[:cd_product_id])
         if Favorite.create(user_id: user.id,cd_product_id:cd_product.id)
            redirect_to cd_product_path(cd_product)
          else
            redirect_to root_path
          end
  end
  def destroy
          user = current_user
            cd_product = CdProduct.find(params[:cd_product_id])
         if favorite = Favorite.find_by(user_id: user.id,cd_product_id:cd_product.id)
            favorite.destroy
            redirect_to cd_product_path(cd_product)
          else
            redirect_to root_path
          end
  end
  def index
  	favorites = current_user.favorites
  end
end