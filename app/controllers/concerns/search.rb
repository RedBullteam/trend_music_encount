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

	def commodity_match_record_function(search_name)
		@search_cd_products = "no-matched"
		@search_cd_products = Commodity.includes(:cd_products).where("commodity LIKE ?", "%" + search_name + "%").where(:cd_products => {:sale_status_id => 2}).count
		return @search_cd_products
	end

	def commodity_name_search_function(search_name)
		@search_cd_products = "no-matched"
		@search_cd_products = Commodity.includes(:cd_products).where("commodity LIKE ?", "%" + search_name + "%").where(:cd_products => {:sale_status_id => 2}).order("cd_products.release_date desc")
		return @search_cd_products
	end

	def company_match_record_function(search_name)
		@search_cd_products = "no-matched"
		@search_cd_products = CdProduct.joins({:commodity => :companies}).where("company LIKE ?", "%" + search_name + "%").where(sale_status_id: 2).count
		return @search_cd_products
	end

	def company_name_search_function(search_name)
		@search_cd_products = "no-matched"
		@search_cd_products = CdProduct.joins({:commodities => :companies}).where("company LIKE ?", "%" + search_name + "%").where(sale_status_id: 2).order(:cd_products => {:release_date => :desc}).page(params[:page]).per(12)
		return @search_cd_products
	end

	def artists_match_record_function(search_name)
		@search_cd_products = "no-matched"
		matched_artists = Artist.where("name LIKE ?", "%" + search_name + "%")
		matched_artists.each do |artist|
		  	@search_cd_products = CdProduct.where(artist_id: artist.id).where(sale_status_id: 2).count
		end
		return @search_cd_products
	end

	def artists_name_search_function(search_name)
		@search_cd_products = "no-matched"
		matched_artists = Artist.where("name LIKE ?", "%" + search_name + "%")
		matched_artists.each do |artist|
			@@search_cd_products = CdProduct.where(artist_id: artist.id).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(12)
		end
		return @@search_cd_products
	end

	def songs_match_record_function(search_name)
		@@search_cd_products = "no-matched"
		@@search_discs = "no-matched"
		matched_songs = Song.where("name LIKE ?", "%" + search_name + "%")
		if matched_songs.size ==  0
			return @@search_cd_products
		end
		matched_songs.each do |song|
		  	@@search_discs = Disc.where(id: song.disc_id)
		end
		@@search_discs.each do |disc|
		  	@@search_cd_products = CdProduct.where(id: disc.cd_product_id).where(sale_status_id: 2).count
		end
		return @@search_cd_products
	end

	def songs_name_search_function(search_name)
		@@search_cd_products = "no-matched"
		@@search_discs = "no-matched"
		matched_songs = Song.where("name LIKE ?", "%" + search_name + "%")
		if matched_songs.size ==  0
			return @@search_cd_products
		end
		matched_songs.each do |song|
		  	@@search_discs = Disc.where(id: song.disc_id)
		end
		@@search_discs.each do |disc|
			@@search_cd_products = CdProduct.where(id: disc.cd_product_id).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(12)
		end
		return @@search_cd_products
	end

end