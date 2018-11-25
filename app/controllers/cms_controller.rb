class CmsController < ApplicationController

include Search

  def index
  	@cd_products = CdProduct.where("good_id not ?", nil).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(9)
  end

  def trend
  end

  def goods_search
  	search_name = params[:search_name]
    if search_name == ""
      return redirect_to cms_path
    end
  	@goods = goods_name_search_function(search_name)
    @match_records = CdProduct.where(good_id:@goods.ids).where(sale_status_id: 2).count
    @goods_cd_products = CdProduct.where(good_id:@goods.ids).where(sale_status_id: 2).page(params[:page]).per(12)
    @path = controller_path + '#' + action_name
    def @path.is(*str)
        str.map{|s| self.include?(s)}.include?(true)
    end
  	render template: "cd_products/list"
  end

  def company_search
    search_name = params[:search_name]
    if search_name == ""
      return redirect_to cms_path
    end
    @companies = company_name_search_function(search_name)
    @companies_goods = Good.where(company_id:@companies.ids)
    @match_records = CdProduct.where(good_id:@companies_goods.ids).where(sale_status_id: 2).count
    @companies_cd_products = CdProduct.where(good_id:@companies_goods.ids).where(sale_status_id: 2).page(params[:page]).per(12)
    @path = controller_path + '#' + action_name
    def @path.is(*str)
        str.map{|s| self.include?(s)}.include?(true)
    end
    render template: "cd_products/list"
  end

end
