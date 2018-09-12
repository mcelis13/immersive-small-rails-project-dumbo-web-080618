Rails.application.routes.draw do

  get "/signup", to: "users#new"
  get "/login", to: 'sessions#new'
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :products

  # get 'users/cart', to: 'users#cart'
  post 'user_products/:id/add_cart', to: "user_products#add_cart", as: "add"
  post '/users/cart', to: 'users#checkout'
  get '/users/confirmation', to: 'users#confirmation'

  resources :user_products

  resources :users, only: [:show, :edit, :update, :create, :destroy]

  root 'application#welcome'
  get 'application/buy_or_sell', to: 'application#buy_or_sell'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
