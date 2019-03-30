Rails.application.routes.draw do
  resources :user_routines
  delete 'access/logout'
  post 'access/attempt_login'
  get 'access/login'
  resources :exercises
  resources :routines
  resources :health_statuses
  resources :days
  resources :users
  resources :admins
  get 'home/index'
  get '/dashboard', to: 'dashboard#index'
  root 'access#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
