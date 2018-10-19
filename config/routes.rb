Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get '/lists', to: 'pages#lists'
  get '/indlist', to: 'pages#indlist'
  get '/profile', to: 'pages#profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
