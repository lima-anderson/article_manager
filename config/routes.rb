Rails.application.routes.draw do
  get 'home/index'
  # devise_for :users
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
