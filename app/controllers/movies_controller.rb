class MoviesController < ApplicationController

include Search

  def index
  	@cd_products = CdProduct.where("movie_id not ?", nil).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(9)
  	@movies = Movie.all
  end

  def title_search
  	id = params[:id]
  	@cd_products = title_search_function(id)
  	render template: "cd_products/list"
  end

  def feature

  end
end
