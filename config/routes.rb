Rails.application.routes.draw do

  devise_for :users

  resources :users do
    resources :posts
  end
  
  resources :posts do
    resources :comments
  end

  get "/followers" => "posts#followers", as: 'my_followers'

  
    root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
