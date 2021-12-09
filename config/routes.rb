Rails.application.routes.draw do
  get 'suggestions/index'
  get 'suggestions/show'

  devise_for :users
  authenticated :user do
    root to: 'pages#home_user', as: :authenticated_root
  end

  unauthenticated :user do
    root to: 'pages#home', as: :unauthenticated_root

  end

  # The vinyls that the user own in his collection:
  resources :user_vinyls, only: [:index, :show, :update, :destroy] do
    member do
      patch :update_tag
    end
  end
  # TODO: :
  # -- SHOULD HAVE --
  # :users
  # :listen
  # :index from other users

  # The vinyls that the user has put in his wish list:
  resources :favorites, only: [:index, :show, :destroy] do
    member do
      post :create_from_favorite
    end
    resources :user_vinyls, only: [:create_from_favorite]
  end

  # The vinyls that the user doesn't own:
  resources :vinyls, only: [:index, :show] do
    collection do
      get :barcode
      get :scan
      get :search
    end
    resources :favorites, only: [:create]
    resources :user_vinyls, only: [:create]
  end

  # The vinyls that are suggested for the user :
  resources :suggestions, only: [:index, :show]
  resources :vinyl_tags, only: [:destroy]
end
