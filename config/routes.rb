Rails.application.routes.draw do
  devise_for :users, sign_out_via: %i[get post]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  # resources :categories
  # resources :payments

  resources :categories do
    resources :payments
   end
  
  #get '/external', to: 'payments#external'
  root to: 'home#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
