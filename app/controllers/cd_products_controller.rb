class CdProductsController < ApplicationController
  def index
  end

  def show
    @cd_product = CdProduct.find(params[:id])
    @discs = Disc.where(cd_product_id: (params[:id]))
    @songs = Song.where(disc_id: @discs.ids)
    @artist = Artist.where(cd_product: artist.id)

  end

  def era_search
  end

  def era_search_list
  end

  def search
  end

  def list
  end
end
