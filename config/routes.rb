Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :products, except: [:destroy]
  resources :checkout, only: [:create]
  resources :webhooks, only: [:create]
end
