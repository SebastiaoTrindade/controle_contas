Rails.application.routes.draw do
  root 'dashboard#index'
  
  resources :usuarios
  resources :conta
  
end
