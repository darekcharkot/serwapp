Rails.application.routes.draw do
  resources :hardwares
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "hardwares#index"
end
