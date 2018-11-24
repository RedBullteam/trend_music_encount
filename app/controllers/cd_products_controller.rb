class CdProductsController < ApplicationController

include Search

  def index
  end

  def show
    @cd_product = CdProduct.find(params[:id])
    @discs = Disc.where(cd_product_id: (params[:id]))
    @songs = Song.where(disc_id: @discs.ids)
    @cds = CdProduct.where(artist_id: @cd_product.artist_id).page(params[:page]).per(5)

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
