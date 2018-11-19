class MoviesController < ApplicationController

  def index
  	@cd_products = CdProduct.where("movie_id not ?", nil).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(9)
  	@movies = Movie.all

  end

  def title_search
  end

  def feature
  end
end
