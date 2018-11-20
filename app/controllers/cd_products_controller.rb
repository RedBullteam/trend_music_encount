class CdProductsController < ApplicationController
  def index
  end

  def show
  end

  def era_search
  end

  def era_search_list
    @cd_products = CdProduct.search(params[:search])
  end

  def search
  end

  def list
  end
end
