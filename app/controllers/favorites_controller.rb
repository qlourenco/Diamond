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
    @vinyl = @favorite.vinyl
    @favorite.destroy
    redirect_to vinyl_path(@vinyl)
  end
end
