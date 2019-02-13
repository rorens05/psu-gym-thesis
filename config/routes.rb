Rails.application.routes.draw do
  resources :health_statuses
  resources :days
  resources :users
  resources :admins
  get 'home/index'
  get '/dashboard', to: 'dashboard#index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
