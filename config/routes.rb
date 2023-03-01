Rails.application.routes.draw do

  root to: 'homes#top'
  devise_for :users
  
  get 'post_images/new'
  get 'post_images/index'
  get 'post_images/show'
  get 'post_images/destroy'

  resources :post_images, only: [:new, :create, :index, :show]

  get "/homes/about" => "homes#about", as: "about"
end
