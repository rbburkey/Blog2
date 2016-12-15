Rails.application.routes.draw do

  devise_for :users
  root "posts#index"
  get "/about" => "static#about"

  resources :posts

  resources :posts do
    resources :comments
  end

end
