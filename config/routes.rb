Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  
  resources :friends
  resources :firends
  #get 'home/index'
  #root 'home#index'
  root 'friends#index'
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end