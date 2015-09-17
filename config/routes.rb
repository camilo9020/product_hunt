Rails.application.routes.draw do

  # get 'products', to: 'products#index', as: :products
  # get 'products/new', to: 'products#new', as: :new_product
  # post 'products', to: 'products#create'
  # get 'products/:id', to: 'products#show'
  # get 'products/:id/edit', to: 'products#edit'
  # patch 'products/:id', to: 'products#update', as: :product
  # get '/welcome', to: 'welcome#index'
  # delete 'products/:id', to: 'products#destroy'

  # resources :products only ó except para incluir solo una rutas especificas
  resources :users, only:[:new, :create]
  resources :products
  root 'products#index'

 
  
end
