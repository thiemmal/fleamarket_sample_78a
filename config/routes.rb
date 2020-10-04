Rails.application.routes.draw do
  devise_for :users

  root 'products#index'

  resources :products, only:[:show,:edit,:new,:create]
  resources :users, only:[:show, :edit, :index, :update]

end