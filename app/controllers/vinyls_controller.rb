class VinylsController < ApplicationController
  def index
    @query = params[:query_search]
    @vinyls = Vinyl.find_from_discogs(@query)
  end

  def show
    # @vinyl = Vinyl.find(params[:id])
  end
end
