class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create_from_favorite
    @favorite = Favorite.find(params[:id])
    @user = current_user
    @user_vinyl = UserVinyl.create(vinyl_id: @favorite[:vinyl_id], user: @user)
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to user_vinyl_path(@user_vinyl)
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
  end
end
