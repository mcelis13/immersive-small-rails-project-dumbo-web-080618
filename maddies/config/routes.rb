Rails.application.routes.draw do

  get "/signup", to: "users#new"
  get "/login", to: 'sessions#new'
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get 'users/cart', to: 'users#cart'
  post 'products/:id/add_cart', to: "products#add_cart", as: "add"


  resources :products
  resources :users, only: [:show, :edit, :update, :create, :destroy]

  root 'application#welcome'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
