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

	def goods_match_record_function(search_name)
		matched_goods = Good.where(goods: search_name)
		matched_goods.each do |goods|
		  	@@cd_products = CdProduct.where(goods_id: goods.id).where(sale_status_id: 2).count
		end
		return @@cd_products
	end

	def goods_name_search_function(search_name)
		matched_goods = Good.where(goods: search_name)
		matched_goods.each do |goods|
			@@cd_products = CdProduct.where(goods_id: goods.id).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(12)
		end
		return @@cd_products
	end

end