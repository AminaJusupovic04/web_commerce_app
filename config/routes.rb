Rails.application.routes.draw do
  get 'cart/create'
  root 'products#index'
  resources :products do
    resources :likes
  end
  resources :orders
  resource :cart, only: [:show, :create, :update, :destroy]
end



