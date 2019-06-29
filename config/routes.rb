Rails.application.routes.draw do

  resources :charges, only: [:new, :create]

  # get 'charges/new'
  # get 'charges/create'
  namespace :admin do
      resources :users
      resources :carts
      resources :line_items
      resources :products
      resources :admin_users

      root to: "users#index"
    end
  resources :line_items
  resources :carts
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'

  resources :products
end
