Rails.application.routes.draw do
  get 'cart', to: 'cart#show'
  post 'cart/add/:id', to: 'cart#add', as: 'cart_add'
  post 'cart/remove/:id', to: 'cart#remove', as: 'cart_remove'
  resources :products do
    resources :likes, only: [:create, :destroy] # Nested route for likes under products
    resources :comments, only: [:create, :destroy]
  end

  root 'products#index'
end








