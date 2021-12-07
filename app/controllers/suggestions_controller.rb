class SuggestionsController < ApplicationController
  def index
    if current_user.user_vinyls.empty?
      @vinyls = Vinyl.all.shuffle.take(10)
    else
      # @query = current_user.user_vinyls.sample.vinyl.artist.name
      @vinyls = Suggestion.find_from_discogs('nekfeu')
    end

    @already_in_collecs = []
    @vinyls.each do |vinyl|
      @already_in_collecs << @already_in_collec = UserVinyl.find_by(user: current_user, vinyl: vinyl)
    end
  end

  def show
    @vinyl = Vinyl.find(params[:id])
    @suggestion = Suggestion.find_by(user: current_user, vinyl: @vinyl)
    @already_in_collec = UserVinyl.find_by(user: current_user, vinyl: @vinyl)
  end
end