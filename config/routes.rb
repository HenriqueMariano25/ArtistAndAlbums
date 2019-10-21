Rails.application.routes.draw do
  resources :artists
  resources :albums
  resources :tracks
  get "/login", to: "login#index"

  root 'artists#index'
end
