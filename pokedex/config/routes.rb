Rails.application.routes.draw do
  resources :poketypes
  devise_for :users
  resources :trainers
  resources :abilities
  resources :pokemons
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pokemons#index'
end
