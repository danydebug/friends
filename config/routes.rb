Rails.application.routes.draw do
  resources :members
  resources :sessions, only: [:create]
  # get 'home/index'
  get 'about', to: 'home#about'
  get 'login', to: 'home#login'

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
