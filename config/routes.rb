Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :products, only:[:show,:edit]
  resources :users, only: [:edit, :update, :index]
end
