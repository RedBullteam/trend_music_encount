class CdProductsController < ApplicationController

include Search

  def index
  end

  def show
  end

  def era_search
  end

  def era_search_list
    @cd_products = CdProduct.search(params[:search])
    redirect to search_list_path(@cd_products)
  end

  def search

  end

  def list

  end
end
