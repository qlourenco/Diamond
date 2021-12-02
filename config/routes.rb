Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # The vinyls that the user own in his collection:
  resources :user_vinyls, only: [:index, :show, :update]
  # TODO: :
  # -- SHOULD HAVE --
  # :users
  # :listen
  # :index from other users

  # The vinyls that the user has put in his wish list:
  resources :favorites, only: [:index]

  # The vinyls that the user doesn't own:
  resources :vinyls, only: [:index, :show] do
    collection do
      get :scan
      get :search
    end
    resources :favorites, only: [:create]
    resources :user_vinyls, only: [:create]
  end


  # The vinyls that are suggested for the user :
  # resources :suggestions, only: [:index]
  # TODO: :
end
