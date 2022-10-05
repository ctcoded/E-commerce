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


  
end
 