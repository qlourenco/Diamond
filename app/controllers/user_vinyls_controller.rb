class UserVinylsController < ApplicationController
  def index
    @user_vinyls = UserVinyl.all
  end

  def show
    @user_vinyl = UserVinyl.find(params[:id])
  end

  def update
    @user_vinyl = current_user.user_vinyls.find(params[:vinyl_id])
    @user_vinyl.update(user_vinyl_params)
  end

  private

  def user_vinyl_params
    params.require(:user_vinyl).permit(:user_id, :vinyl_id)
  end
end
