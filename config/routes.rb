Rails.application.routes.draw do

  resources :attractions ,only: [:index,:show,:new,:create,:update,:edit]

  root 'application#home'
  resources :users
  get "/signin" ,to: 'sessions#new'
  get "/logout" ,to: 'sessions#destroy'
  post "/rides" ,to: 'rides#create'
  resources :sessions, only: [:create]
end