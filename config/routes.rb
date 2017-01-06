Rails.application.routes.draw do
  # get '/new', to: 'users#new', as: 'users'
  # get '/users/:id', to: 'users#show'
  # post '/new', to: 'users#create'
  resources :users
  post 'sessions', to: "sessions#create"
  get '/signin', to: "sessions#new"
  get '/signout', to: "sessions#destroy", as: "signout"
  post '/attractions', to: 'attractions#create'
  get '/attractions/new', to: 'attractions#new', as: 'new_attractions'

  get '/attractions/:id', to: 'attractions#show', as: 'attraction'
  get '/attractions', to: "attractions#index"
  post '/users/:id', to: 'users#update'

  root  'users#index'


end
