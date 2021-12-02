class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    @vinyl = Vinyl.find(params[:vinyl_id])
    @user = current_user
    @favorite = Favorite.create(favorite: @favorite, user: @user)
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def delete
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
  end
end
