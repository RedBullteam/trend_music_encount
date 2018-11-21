class CmsController < ApplicationController

include Search

  def index
  	@cd_products = CdProduct.where("goods_id not ?", nil).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(9)
  end

  def trend
  end

  def goods_search
  	search_name = params[:search_name]
    @match_records = goods_match_record_function(search_name)
    matched_goods = Good.where(goods: search_name)
		matched_goods.each do |goods|
			@cd_products = CdProduct.where(goods_id: goods.id).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(12)
		end
  	# @cd_products = goods_name_search_function(search_name)
    @path = controller_path + '#' + action_name
    def @path.is(*str)
        str.map{|s| self.include?(s)}.include?(true)
    end
  	render template: "cd_products/list"
  end
end
