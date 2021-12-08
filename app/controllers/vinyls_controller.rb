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

  def scan; end

  def barcode
    # @barcode = load_quagga
    #   @barcode = UserVinyl.find_or_initialize_by(upc: params[:upc])
    #   unless @barcode.new_record?
    #     redirect_to @barcode
    #   else
    #     redirect_to new_barcode_path(upc: params[:upc])
    #   end
    # end
  end
end
