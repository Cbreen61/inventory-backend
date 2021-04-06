Rails.application.routes.draw do
  resources :inventoried_products
  resources :products
  resources :inventories
  resources :accounts
  resources :regions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
