Rails.application.routes.draw do  
  
  # Session Login
  root 'sessions#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  # Session User
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  resources :users, only: [:index,:new, :create]
  
  # Session Dashboard
  get 'dashboard', to: 'dashboard#index'

  # Session Contas
  resources :contas, except: :show
        
end
