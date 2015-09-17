Rails.application.routes.draw do

  root 'products#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  
  resources :users, only:[:new, :create]
  resources :products
 

 
  
end
