class CdProductsController < ApplicationController
  def index
  end

  def show
    @cd_product = CdProduct.find(params[:id])
    @discs = Disc.where(cd_product_id: (params[:id]))
    @songs = Song.where(disc_id: @discs.ids)
    @cd_products = CdProduct.where(artist_id: (params[:id])).page(params[:page]).per(5)

  end

  def era_search

  end

  def era_search_list
@cd_products = CdProduct.where("dorama_id not ?", nil).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(12)
  end

  def search
  end

  def list
  end
end
