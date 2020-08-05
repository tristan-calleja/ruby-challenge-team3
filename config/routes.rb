Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/new'
  get 'posts/edit'
  get 'posts/show'
  get 'posts/update'
  get 'posts/destroy'
  get 'posts/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
