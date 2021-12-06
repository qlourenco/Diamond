class UserVinylsController < ApplicationController
  def index
    @user = current_user
    @user_vinyls = @user.user_vinyls.all
  end

  def create
    @vinyl = Vinyl.find(params[:vinyl_id])
    @user = current_user
    @user_vinyl = UserVinyl.create(vinyl: @vinyl, user: @user)
    redirect_to user_vinyl_path(@user_vinyl)
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
    redirect_to user_vinyls_path
  end

  private

  def user_vinyl_params
    params.require(:user_vinyl).permit(:user_id, :vinyl_id)
  end
end
