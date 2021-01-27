Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/users', to: 'users#index', as: 'users'
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'


  ########### Pictures ###########
  get '/pictures/new', to: 'pictures#new', as: 'new_picture'
  post '/pictures', to: 'pictures#create'
  get '/pictures', to: 'pictures#index'
  get '/pictures/:id', to: 'pictures#show', as: 'picture'

  ########### Pictures Tag ###########
  get '/picture_tags/new', to: 'picture_tags#new'
  post '/picture_tags', to: 'picture_tags#create'
  

########### Tags ###########

get '/tags', to: 'tags#index'
get '/tags/:id', to: 'tags#show', as: 'tag'

########### Comments ###########
get '/comments/new', to: 'comments#new', as: 'new_comment'
post '/comments', to: 'comments#create'
get '/comments/:id', to: 'comments#show', as: 'comment'



end
