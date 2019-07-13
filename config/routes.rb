Rails.application.routes.draw do

  namespace :admin do
      resources :users
      resources :carts
      resources :line_items
      resources :products
      resources :admin_users
      resources :suppliers
      resources :categories

      root to: "users#index"
    end
  resources :line_items
  resources :carts
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get 'contact', to: 'pages#contact'



  resources :products
  resources :suppliers
  resources :categories

  resources :products, only: [:index] do
    resources :suppliers, only: [:index]
  end
end
