Rails.application.routes.draw do
  # Session User
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  resources :users, only: [:new, :create]

  # Session Login
  root 'sessions#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  # Session Dashboard
  get 'dashboard', to: 'dashboard#index'
      
end
