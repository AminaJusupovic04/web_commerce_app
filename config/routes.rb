Rails.application.routes.draw do
  root 'products#index'
  resources :products
  resources :orders
  resource :cart, only: [:show, :create, :update, :destroy]
  post 'add/:product_id', to: 'carts#add', as: :add_to
  get 'checkout', to: 'checkout#show', as: :checkout
end




