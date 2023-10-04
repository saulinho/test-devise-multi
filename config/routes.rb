Rails.application.routes.draw do
  devise_for :users
  resources :customers
  resources :companies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "index#index"
end
