class FavoritesController < ApplicationController
  def index
    @user = current_user
    if params[:query].present?
      sql_query = "title ILIKE :query OR name ILIKE :query"
      @favorites = @user.favorites.joins(vinyl: :artist).where(sql_query, query: "%#{params[:query]}%")
    else
      @favorites = @user.favorites.all
    end
  end

  def create_from_favorite
    @favorite = Favorite.find(params[:id])
    @user = current_user
    @user_vinyl = UserVinyl.create(user: @user, vinyl_id: @favorite[:vinyl_id])
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to user_vinyl_path(@user_vinyl)
  end

  def create
    @user = current_user
    @vinyl = Vinyl.find(params[:vinyl_id])
    @favorite = Favorite.create(user: @user, vinyl: @vinyl)
    redirect_to vinyl_path(@vinyl)
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    head :no_content
  end
end
