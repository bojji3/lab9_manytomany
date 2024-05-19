Rails.application.routes.draw do
  resources :authors
  resources :books
  resources :libraries
end