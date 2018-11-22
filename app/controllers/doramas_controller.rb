class DoramasController < ApplicationController

include Search

  def index
  	@cd_products = CdProduct.where("dorama_id not ?", nil).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(9)
  	@doramas = Dorama.all
  end

  def feature

  end

  def title_search
  end
end
