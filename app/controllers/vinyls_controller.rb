class VinylsController < ApplicationController
  def index
    @query = params[:query]
    @vinyls = Vinyl.find_from_discogs(@query)
  end

  def show
    @vinyl = Vinyl.find(params[:id])
    @favorite = Favorite.find_by(user: current_user, vinyl: @vinyl)
  end
end
