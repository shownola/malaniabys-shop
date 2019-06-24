Rails.application.routes.draw do

  # get 'orderitems/create'
  # get 'orderitems/update'
  # get 'orderitems/destroy'
  # get 'carts/show'
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'

  resources :products
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
end
