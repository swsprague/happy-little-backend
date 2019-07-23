# frozen_string_literal: true

Rails.application.routes.draw do
  # resources :playlist_videos
  # RESTful routes
  resources :examples, :videos, :users, :playlists, :playlist_videos, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
