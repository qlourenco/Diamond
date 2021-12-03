class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    @vinyl = Vinyl.find(params[:vinyl_id])
    @user = current_user
    @favorite = Favorite.create(vinyl: @vinyl, user: @user)
    redirect_to favorites_path(@favorite)
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
