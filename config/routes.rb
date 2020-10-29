Rails.application.routes.draw do
  devise_for :users

  root 'products#index'

  resources :products, only: [:index, :show, :new, :edit, :destroy, :create] do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end

  
  resources :users, only:[:show, :edit, :index, :update]
  
  resources :categories do
    collection do
      get :search
    end
  end
end