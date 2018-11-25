class CmsController < ApplicationController

include Search

  def index
  	@cd_products = CdProduct.where("commodity_id not ?", nil).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(9)
  end

  def trend
  end

  def commodity_search
  	search_name = params[:search_name]
    if search_name == ""
      return redirect_to cms_path
    end
  	@commodities = commodities_name_search_function(search_name)
    @commodities_cd_product = CdProduct.where(commodity_id:@commodity.ids).page(params[:page]).per(12)
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
    @match_records = company_match_record_function(search_name)
    @cd_products = company_name_search_function(search_name)
    @path = controller_path + '#' + action_name
    def @path.is(*str)
        str.map{|s| self.include?(s)}.include?(true)
    end
    render template: "cd_products/list"
  end

end
