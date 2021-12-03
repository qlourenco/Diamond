class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    @vinyl = Vinyl.find(params[:vinyl_id])
    @favorite = Favorite.create(vinyl: @vinyl, user: current_user)
    redirect_to vinyl_path(@vinyl)
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path
  end
end
