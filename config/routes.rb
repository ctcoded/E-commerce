Rails.application.routes.draw do
  # resources :contacts
  resources :purchase_orders
  # resources :addresses
  # resources :contacts
  resources :vendors, only: [:index, :show]
  resources :purhcase_orders, only: [:index, :show, :create]
  resources :users, only: [:index, :show, :create]
  resources :inventories, only: [:index, :show, :create]
  resources :items, only: [:index, :show, :create]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!

  get "/user/:user_id", to: "users#show"
  # get "/inventories/:user_id/items", to: "items#index"
  get "/inventories/:user_id/", to: "inventory#show"

  get "/vendors/:user_id/", to: "vendors#show"

  # get "/purchase_orders/", to: "purchase_orders#index"
  # get "/purchase_orders/:user_id/", to: "purchase_orders#show"
  
  post "/signup", to: "users#create"
  
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"


  
end
 