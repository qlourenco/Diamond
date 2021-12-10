class UserVinylsController < ApplicationController
  def index
    @user = current_user
    if params[:query].present?
      sql_query = "title ILIKE :query OR name ILIKE :query"
      @user_vinyls = UserVinyl.joins(vinyl: :artist).where(sql_query, query: "%#{params[:query]}%")
    else
      @user_vinyls = @user.user_vinyls.all
    end

    arr = []
    @user_vinyls.each do |vinyl|
      arr << vinyl.vinyl.genre_id
    end
    @hash_vinyl = arr.group_by { |i| i }
    @hash_top_vinyl = @hash_vinyl.sort_by {|_key, value| value.length}
    @hash_top_vinyl.reverse!
    @first_genre = @hash_top_vinyl[0]
    @second_genre = @hash_top_vinyl[1]
    @third_genre = @hash_top_vinyl[2]
  end

  def create
    @vinyl = Vinyl.find(params[:vinyl_id])
    @user = current_user
    @user_vinyl = UserVinyl.create(vinyl: @vinyl, user: @user)
    redirect_to user_vinyl_path(@user_vinyl)
  end

  def update_tag
    @user_vinyl = UserVinyl.find(params[:id])
    @tag = Tag.find(params[:format])
    @vinyl_tag = VinylTag.create(tag: @tag, user_vinyl: @user_vinyl)
    redirect_to user_vinyl_path(params[:id])
  end

  def show

    @user_vinyl = UserVinyl.find(params[:id])
    @tags = Tag.all
    @vinyl_tags = @user_vinyl.vinyl_tags.all
  end

  def update
    @user_vinyl = UserVinyl.find(params[:id])
    @tag = Tag.find(params[:user_vinyl][:vinyl_tags])
    @vinyl_tag = VinylTag.create(tag: @tag, user_vinyl: @user_vinyl)
    redirect_to user_vinyl_path(params[:id])
  end

  def destroy
    @user_vinyl = UserVinyl.find(params[:id])
    @user_vinyl.destroy
    head :no_content
  end

  private

  def user_vinyl_params
    params.require(:user_vinyl).permit(:user_id, :vinyl_id)
  end
end
