class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    render 'home'
  end

  def home_user
    render 'home_user'
  end
end
