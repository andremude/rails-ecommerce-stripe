Rails.application.routes.draw do
  root 'products#index'
  resources :articles, except: [:destroy]
end
