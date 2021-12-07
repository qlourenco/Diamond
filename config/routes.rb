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
  resources :visitors

  resources :products do
    get :get_barcode, on: :collection
  end

  # The vinyls that the user own in his collection:
  resources :user_vinyls, only: [:index, :show, :update, :destroy]
  # TODO: :
  # -- SHOULD HAVE --
  # :users
  # :listen
  # :index from other users

  # The vinyls that the user has put in his wish list:
  resources :favorites, only: [:index, :show, :destroy]

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
  resources :suggestions, only: [:index, :show]
end
