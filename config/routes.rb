Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  resources :articles, except: [:destroy]
  resources :checkout, only: [:create]
  resources :webhooks, only: [:create]
end
