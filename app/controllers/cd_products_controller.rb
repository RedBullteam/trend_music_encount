class CdProductsController < ApplicationController

include Search

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
  end

  def artists_search_form

  end

  def artists_search
    search_name = params[:search_name]
    if search_name == ""
      return redirect_to artists_search_form_path
    end
    @match_records = artists_match_record_function(search_name)
    @cd_products = artists_name_search_function(search_name)
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
    @match_records = songs_match_record_function(search_name)
    @cd_products = songs_name_search_function(search_name)
    @path = controller_path + '#' + action_name
    def @path.is(*str)
        str.map{|s| self.include?(s)}.include?(true)
    end
    render template: "cd_products/list"
  end

  def list

  end
end
