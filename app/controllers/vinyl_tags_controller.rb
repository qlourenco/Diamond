class VinylTagsController < ApplicationController
  def destroy
    @vinyl_tag = VinylTag.find(params[:id])
    @vinyl_tag.destroy
    redirect_to request.referrer
  end
end
