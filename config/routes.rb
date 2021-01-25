Rails.application.routes.draw do
  # get 'tags/index'
  # get 'tags/show'
  # get 'pictures/index'
  # get 'pictures/show'
  # get 'users/new'
  # get 'users/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/users', to: 'users#index', as: 'users'
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'


  ########### Pictures ###########

  get '/pictures', to: 'pictures#index'
  get '/pictures/:id', to: 'pictures#show', as: 'picture'
  


########### Tags ###########

get '/tags', to: 'tags#index'
get '/tags/:id', to: 'tags#show', as: 'tag'

  


end
