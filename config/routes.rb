Rails.application.routes.draw do
  
  resources :inventories
  resources :addresses
  resources :contacts
  resources :vendors
  resources :purhcase_orders
  resources :inventory_items
  resources :users
  resources :items
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
