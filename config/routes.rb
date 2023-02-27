Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  match '/about', to: 'homes#about', via: 'get'
end
