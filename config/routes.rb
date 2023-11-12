Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  get 'home/utility_billing', to: 'home#utility_billing'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
