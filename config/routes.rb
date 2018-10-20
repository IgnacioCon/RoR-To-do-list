Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items do 
      member do
        patch :complete
      end
    end
  end

  devise_for :users

  root 'pages#home'
  get '/lists', to: 'todo_lists#index'
  get '/indlist', to: 'pages#indlist'
  get '/profile', to: 'pages#profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
