Rails.application.routes.draw do
  root to: 'home#index'
  patch "capture", to: "pokemons#capture", as: "capture"
  patch "damage", to: "pokemons#damage", as: "damage"
  patch "heal", to: "pokemons#heal", as: "heal"
  get "/pokemon/new", to: "pokemons#new", as: :new
  post "pokemons", to: "pokemons#create"
  devise_for :trainers
  resources :trainers
end
