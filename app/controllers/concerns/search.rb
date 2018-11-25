module Search
  extend ActiveSupport::Concern

  	def movie_match_record_function(id)
		CdProduct.where(movie_id: id).where(sale_status_id: 2).count
  	end

	def movie_title_search_function(id)
		CdProduct.where(movie_id: id).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(12)
	end

	def dorama_match_record_function(id)
		CdProduct.where(dorama_id: id).where(sale_status_id: 2).count
  	end

	def dorama_title_search_function(id)
		CdProduct.where(dorama_id: id).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(12)
	end

	def goods_name_search_function(search_name)
		@search_goods = "no-matched"
		@search_goods = Good.includes(:cd_products).where("goods LIKE ?", "%" + search_name + "%").order("cd_products.release_date desc")
		return 	@search_goods
	end


	def company_name_search_function(search_name)
		@search_companies = "no-matched"
		@search_companies = Company.includes({:goods => :cd_products}).where("company LIKE ?", "%" + search_name + "%").order("cd_products.release_date desc")
		return 	@search_companies
	end


	def artists_name_search_function(search_name)
		@search_artists = "no-matched"
		@search_artists = Artist.includes(:cd_products).where("artists.name LIKE ?", "%" + search_name + "%").order("cd_products.release_date desc")
		return @search_artists
	end

	def songs_name_search_function(search_name)
		@search_cd_products = "no-matched"
		@search_cd_products = CdProduct.eager_load({:discs => :songs}).where("songs.name LIKE ?", "%" + search_name + "%").order("cd_products.release_date desc").page(params[:page]).per(12)
		return 	@search_cd_products
	end

end