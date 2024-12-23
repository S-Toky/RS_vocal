Rails.application.routes.draw do
  resources :posts
  root to: "home#index"
  devise_for :users
  resources :posts do
    resources :comments
    resources :likes
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
