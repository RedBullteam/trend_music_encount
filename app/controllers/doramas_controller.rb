class DoramasController < ApplicationController

include Search

  def index
  	@cd_products = CdProduct.where("dorama_id not ?", nil).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(9)
  	@doramas = Dorama.all
  end

  def feature
    search_date = '2018/10/01'
    @doramas = Dorama.where(dorama_start_date: search_date.in_time_zone.all_month).order(week_id: :desc)
    @cds = CdProduct.where(dorama_id:@doramas.ids).where(sale_status_id: 2)

  end

  def title_search
  	id = params[:id]
    @match_records = dorama_match_record_function(id)
  	@cd_products = dorama_title_search_function(id)
    @doramas = Dorama.all
    @path = controller_path + '#' + action_name
    def @path.is(*str)
        str.map{|s| self.include?(s)}.include?(true)
    end
  	render template: "cd_products/list"
  end
end
