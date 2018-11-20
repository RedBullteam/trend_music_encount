class CdProductsController < ApplicationController
  def index
  end

  def show
    @cd_product = CdProduct.find(params[:id])
    @artist = Artist.find(params[:id])
    @label = Label.find(params[:id])
    @genre = Genre.find(params[:id])
    @discs = Disc.all
    @songs = Song.all
  end

  def era_search
  end

  def era_search_list
    @cd_products = CdProduct.all #全件表示
  end

  def search
  end

  def list
  end
end
