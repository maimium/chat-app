Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "rooms#index"
  resource :user, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
