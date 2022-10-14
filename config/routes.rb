Rails.application.routes.draw do
  resources :contacts
  resources :purchase_orders
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
  get "/allusers", to: "users#index"

  get "/inventories/:id", to: "inventories#show"

  get "/inventories/:id/items", to: "items#index"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"


  
end
 