Rails.application.routes.draw do
  devise_for :customers

  # get "/seller_dashboard" => "sellers#homepage"
  # get "/customer_dashboard" => "customers#homepage"
  # get "/seller_dashboard" => "sellers#homepage"

  #resources :products
  root "public#home"
  # root 'sellers#homepage'
  devise_for :companies
  devise_for :sellers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :sellers do
    resources :products
    resources :product_categories
  end
  resources :customers do
    resources :orders
  end
  # resources :product_categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
