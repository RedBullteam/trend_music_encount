class CdProductsController < ApplicationController

include Search

  def index
    @movies = CdProduct.where("movie_id not ?", nil).where(sale_status_id: 2).order(release_date: :desc).limit(3)
    @commodities = CdProduct.where("commodity_id not ?", nil).where(sale_status_id: 2).order(release_date: :desc).limit(3)
    @doramas = CdProduct.where("dorama_id not ?", nil).where(sale_status_id: 2).order(release_date: :desc).limit(3)

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

  def artists_search_form

  end

  def artists_search
    search_name = params[:search_name]
    if search_name == ""
      return redirect_to artists_search_form_path
    end
    @artists = artists_name_search_function(search_name)
    @match_records = CdProduct.where(artist_id:@artists.ids).where(sale_status_id: 2).count
    @artists_cd_products = CdProduct.where(artist_id:@artists.ids).where(sale_status_id: 2).page(params[:page]).per(12)
    @path = controller_path + '#' + action_name
    def @path.is(*str)
        str.map{|s| self.include?(s)}.include?(true)
    end
    render template: "cd_products/list"
  end

  def songs_search_form

  end

  def songs_search
    search_name = params[:search_name]
    if search_name == ""
      return redirect_to songs_search_form_path
    end
    @cd_products = songs_name_search_function(search_name)
    @match_records = CdProduct.eager_load({:discs => :songs}).where("songs.name LIKE ?", "%" + search_name + "%").count
    @path = controller_path + '#' + action_name
    def @path.is(*str)
        str.map{|s| self.include?(s)}.include?(true)
    end
    render template: "cd_products/list"
  end

  def list

  end
end
