Rails.application.routes.draw do
  resources :members
  resources :sessions, only: [:create]



  get 'login', to: 'login#new'
  get 'about', to: 'home#about'
  root 'home#index'

  get 'signup', to: 'users#new'
  get 'users', to: 'users#new'
  post 'users', to: 'users#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
