Rails.application.routes.draw do
  devise_for :users

  root 'products#index'

  resources :products, only:[:show,:edit,:new, :create, :destroy] do
    collection do
      get 'search'
    end
  end
  resources :users, only:[:show, :edit, :index, :update]
  
  resources :categories do
    collection do
      get :search
    end
  end
end