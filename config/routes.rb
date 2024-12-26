Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'dashboard#index'
  
  resources :usuarios
  resources :conta
  
end
