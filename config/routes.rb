Rails.application.routes.draw do
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  resources :products do
    resources :likes, only: [:create, :destroy] # Nested route for likes under products
    resources :comments, only: [:create, :destroy]
  end

  get 'comments/create'
  get 'comments/destroy'
  

  root 'products#index'
end







