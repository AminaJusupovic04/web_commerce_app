Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  get 'cart/create'
  root 'products#index'
  
  resources :products do
    resources :likes, only: [:create, :destroy] # Nested route for likes under products
    resources :comments, only: [:create, :destroy]
  end
  
  resources :orders
  resource :cart, only: [:show, :create, :update, :destroy]
end







