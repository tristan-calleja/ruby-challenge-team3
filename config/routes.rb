Rails.application.routes.draw do

  get 'comments/index'
  get 'comments/new'
  get 'comments/create'
  get 'comments/edit'
  get 'comments/update'
  get 'comments/destroy'
  get 'comments/show'
  get 'posts/index'
  get 'posts/new'
  get 'posts/edit'
  get 'posts/show'
  get 'posts/update'
  get 'posts/destroy'
  get 'posts/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
