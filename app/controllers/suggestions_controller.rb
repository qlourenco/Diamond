class SuggestionsController < ApplicationController
  def index
    @hash = current_user.vinyls.group(:artist).order(:count).count
    @top3s = @hash.to_a.reverse.take(3)
    @top3_names = []
    @top1 = @top3s[0][0].name
    @top2 = @top3s[1][0].name
    @top3 = @top3s[2][0].name
    @top3_names << @top1
    @top3_names << @top2
    @top3_names << @top3
    @query = @top3_names.sample

    @vinyls = Suggestion.find_from_discogs(@query)
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
