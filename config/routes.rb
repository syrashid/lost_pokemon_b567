Rails.application.routes.draw do
  # Index
  root to: 'pokemons#index'
  # get '/pokemons', to: 'pokemons#index'
  resources :pokemons, only: [ :new , :show, :create ]
end
