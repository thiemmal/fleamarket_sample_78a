Rails.application.routes.draw do
  devise_for :users

  root 'products#index'

  resources :products, only:[:show,:edit,:new, :create, :destroy] do
    resource :purchases do
      member do
        get  "buy"
        post "pay"
      end
      
    collection do
      get 'search'
    end
  end
  resources :users, only:[:show, :edit, :index, :update]

  resources :cards, only: [:new, :create, :show, :destroy] do
  end
  
  resources :categories do
    collection do
      get :search
    end
  end
end