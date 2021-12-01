class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
      render 'home_user'
    else
      render "home"
    end
  end
end
