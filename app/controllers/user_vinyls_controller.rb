class UserVinylsController < ApplicationController
  def index
    @user_vinyls = UserVinyl.all
  end

  def create
    @vinyl = Vinyl.find(params[:vinyl_id])
    @user = current_user
    @user_vinyl = UserVinyl.create(vinyl: @vinyl, user: @user)
    redirect_to user_vinyl_path(@user_vinyl)
  end

  def show
    @user_vinyl = UserVinyl.find(params[:id])
  end

  def update
    @user_vinyl = current_user.user_vinyls.find(params[:vinyl_id])
    @user_vinyl.update(user_vinyl_params)
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
