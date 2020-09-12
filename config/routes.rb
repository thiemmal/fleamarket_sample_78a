Rails.application.routes.draw do
  devise_for :users
  root 'users#show'
  resources :products, only:[:show,:edit]

end
