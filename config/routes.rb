Rails.application.routes.draw do
  root 'dashboard#new'
  resources :dashboard, only: [:new, :create]
end
