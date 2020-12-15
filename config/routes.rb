Rails.application.routes.draw do
  devise_for :users
  # get 'messages/index'

  # SSedit
  # root to: "messages#index"
  root to: "rooms#index"
  # SSedit2
  resources :users, only: [:edit, :update]
  # SSedit3
  # resources :rooms, only: [:new, :create]
  # resources :rooms, only: [:new, :create] do
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end

end
