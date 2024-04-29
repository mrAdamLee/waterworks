Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home/utility_billing', to: 'home#utility_billing'
  get 'sessions/new' 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
