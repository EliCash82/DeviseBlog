Rails.application.routes.draw do
  devise_for :admins
  resources :blogs
  devise_for :users
  root 'blogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
