Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # The vinyls that the user own in his collection:
  resources :user_vinyls, only: []
  # TODO: :
  # :index
  # :create
  # :update
  # -- SHOULD HAVE --
  # :users
  # :listen
  # :index from other users

  # The vinyls that the user has put in his wish list:
  resources :favorites, only: []
  # TODO: :
  # :index
  # :create

  # The original tags or the user's tags :
  resources :vinyl_tags, only: []

  #  The vinyls that the user doesn't own:
  resources :vinyls, only: []
  # TODO: :
  # :index
  # :show
  # :scan
  # :search

  # The vinyls that are suggested for the user :
  # resources :suggestions, only: [:index]
  # TODO: :
  # :index
end


# resources :bookings, only: [:index, :show, :update] do
  #   member do
  #     get :cancel
  #   end
  # end

  # resources :bikes, only: [:index, :show, :create, :edit, :update, :destroy] do
  #   resources :bookings, only: [:create]
  # end

  # namespace :owner do
  #   resources :bikes, only: [:index] do
  #     member do
  #       get :profile
  #     end
  #   end
  #   resources :bookings, only: [:index] do
  #     member do
  #       patch :accept
  #       patch :decline
  #     end
