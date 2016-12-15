Rails.application.routes.draw do

  root "posts#index"
  get "/about" => "static#about"

  resources :posts

  resources :posts do
    resources :comments
  end

end
