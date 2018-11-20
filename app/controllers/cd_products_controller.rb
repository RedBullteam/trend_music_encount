class CdProductsController < ApplicationController
  def index
  end

  def show
    @cd_product = CdProduct.find(params[:id])
    @artist = Artist.find(params[:id])
    @label = Label.find(params[:id])
    @genre = Genre.find(params[:id])
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
