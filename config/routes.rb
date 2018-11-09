Rails.application.routes.draw do
  get 'favorites/create'

  get 'favorites/destroy'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :favorites, only: [:create, :destroy]
  resources :blogs do
    collection do
      post :confirm
    end
  end
  root 'top#index'
end
