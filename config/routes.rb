Rails.application.routes.draw do
  devise_for :users
  # get 'messages/index'
  root 'messages#index'
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create]
  resources :groups, only: [:index,:new, :create, :edit, :update]
  resources :messages, only: [:new, :create, :show]
end
