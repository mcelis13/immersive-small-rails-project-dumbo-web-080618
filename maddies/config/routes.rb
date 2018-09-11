Rails.application.routes.draw do

  resources :user_products
  get "/signup", to: "users#new"
  get "/login", to: 'sessions#new'
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get 'users/cart', to: 'users#cart'
  post 'user_products/:id/add_cart', to: "user_products#add_cart", as: "add"


  resources :products
  resources :users, only: [:show, :edit, :update, :create, :destroy]

  root 'application#welcome'
  # get "/signup", to: "users#new"
  # get "/login", to: 'sessions#new'
  # post "/sessions", to: "sessions#create"
  # delete "/logout", to: "sessions#destroy"
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
