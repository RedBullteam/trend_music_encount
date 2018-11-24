class ReleaseEraTagsController < ApplicationController
  def show
	@release_era_tags = ReleaseEraTag.all
	@release_era_tag = ReleaseEraTag.find(params[:id])
	@cd_products = @release_era_tag.cd_products.page(params[:page]).per(12)
  end
end
