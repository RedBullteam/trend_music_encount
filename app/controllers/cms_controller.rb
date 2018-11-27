class CmsController < ApplicationController

include Search

  def index
  	@cd_products = CdProduct.where("commodity_id not ?", nil).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(9)
  end

  def trend
   @cd_products = CdProduct.where("commodity_id not ?", nil).where(sale_status_id: 2).order(release_date: :desc).limit(9)
  end

  def commodity_search
     search_name = params[:search_name]
   if search_name == ""
     return redirect_to cms_path
   end
     @commodities = commodity_name_search_function(search_name)
   @match_records = CdProduct.where(commodity_id:@commodities.ids).where(sale_status_id: 2).count
   @commodities_cd_products = CdProduct.where(commodity_id:@commodities.ids).where(sale_status_id: 2).page(params[:page]).per(12)
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
   @companies_commodities = Commodity.where(company_id:@companies.ids)
   @match_records = CdProduct.where(commodity_id:@companies_commodities.ids).where(sale_status_id: 2).count
   @companies_cd_products = CdProduct.where(commodity_id:@companies_commodities.ids).where(sale_status_id: 2).page(params[:page]).per(12)
   @path = controller_path + '#' + action_name
   def @path.is(*str)
       str.map{|s| self.include?(s)}.include?(true)
   end
   render template: "cd_products/list"
 end

end
