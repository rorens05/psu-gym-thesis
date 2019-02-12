Rails.application.routes.draw do
  get 'home/index'
  devise_for :admins
  resources :admins
  get '/dashboard', to: 'dashboard#index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
