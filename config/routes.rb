# frozen_string_literal: true

Rails.application.routes.draw do
  resources :flavor_likes
  resources :tastings
  resources :teas, except: %i[new edit]
  resources :flavors, except: %i[new edit]
  resources :users, only: %i[update show index destroy]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
