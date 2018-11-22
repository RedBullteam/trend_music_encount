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
		@@search_cd_products = "no-matched"
		matched_goods = Good.where("goods LIKE ?", "%" + search_name + "%")
		matched_goods.each do |goods|
		  	@@search_cd_products = CdProduct.where(goods_id: goods.id).where(sale_status_id: 2).count
		end
		return @@search_cd_products
	end

	def goods_name_search_function(search_name)
		@@search_cd_products = "no-matched"
		matched_goods = Good.where("goods LIKE ?", "%" + search_name + "%")
		matched_goods.each do |goods|
			@@search_cd_products = CdProduct.where(goods_id: goods.id).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(12)
		end
		return @@search_cd_products
	end

	def company_match_record_function(search_name)
		@@search_cd_products = "no-matched"
		@@search_goods = "no-matched"
		matched_companys = Company.where("company LIKE ?", "%" + search_name + "%")
		if matched_companys.size ==  0
			return @@search_cd_products
		end
		matched_companys.each do |company|
		  	@@search_goods = Good.where(company_id: company.id)
		end
		@@search_goods.each do |goods|
		  	@@search_cd_products = CdProduct.where(goods_id: goods.id).where(sale_status_id: 2).count
		end
		return @@search_cd_products
	end

	def company_name_search_function(search_name)
		@@search_cd_products = "no-matched"
		@@search_goods = "no-matched"
		matched_companys = Company.where("company LIKE ?", "%" + search_name + "%")
		if matched_companys.size ==  0
			return @@search_cd_products
		end
		matched_companys.each do |company|
		  	@@search_goods = Good.where(company_id: company.id)
		end
		@@search_goods.each do |goods|
			@@search_cd_products = CdProduct.where(goods_id: goods.id).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(12)
		end
		return @@search_cd_products
	end

end