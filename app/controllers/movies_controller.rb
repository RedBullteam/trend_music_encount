class MoviesController < ApplicationController

include Search

  def index
  	@cd_products = CdProduct.where("movie_id not ?", nil).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(9)
  	@movies = Movie.all
  end

  def title_search
  	id = params[:id]
    @match_records = movie_match_record_function(id)
  	@cd_products = movie_title_search_function(id)
    @movies = Movie.all
    @path = controller_path + '#' + action_name
    def @path.is(*str)
        str.map{|s| self.include?(s)}.include?(true)
    end
  	render template: "cd_products/list"
  end

  def feature

  end
end
