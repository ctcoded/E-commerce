Rails.application.routes.draw do
  
  # resources :addresses
  # resources :contacts
  # resources :vendors
  # resources :purhcase_orders
  resources :users, only: [:index, :show, :create]
  resources :inventories, only: [:index, :show, :create]
  resources :items, only: [:index, :show, :create]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!

  post "/signup", to: "users#create"
  get "/me", to: "users#show"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"


  
end
 