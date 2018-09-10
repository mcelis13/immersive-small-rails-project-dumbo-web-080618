Rails.application.routes.draw do
  resources :products
  resources :sellers
  resources :users, only: [:show, :edit, :update, :create, :destroy]

  get "/signup", to: "users#new"
  get "/login", to: 'sessions#new'
  post "/sessions", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
