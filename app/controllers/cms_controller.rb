class CmsController < ApplicationController
  def index
  	@cd_products = CdProduct.where("goods_id not ?", nil).where(sale_status_id: 2).order(release_date: :desc).page(params[:page]).per(9)
  end

  def trend
  end

  def search
  end
end
