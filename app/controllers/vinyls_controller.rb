class VinylsController < ApplicationController
  def index
    @query = params[:query]
    @vinyls = Vinyl.find_from_discogs(@query)
    @already_in_collecs = []
    @vinyls.each do |vinyl|
      @already_in_collecs << @already_in_collec = UserVinyl.find_by(user: current_user, vinyl: vinyl)
    end
  end

  def show
    @vinyl = Vinyl.find(params[:id])
    @favorite = Favorite.find_by(user: current_user, vinyl: @vinyl)
    @already_in_collec = UserVinyl.find_by(user: current_user, vinyl: @vinyl)
  end

  def scan
  end

  def barcode
    @query = params[:query]
    @vinyl = Vinyl.find_from_discogs(@query)
    @vinyl_id = @vinyl[0].id
    redirect_to vinyl_path(@vinyl_id)
  end
end
