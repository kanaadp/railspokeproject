Rails.application.routes.draw do
  root to: 'home#index'
  patch "capture", to: "pokemon#capture", as: "capture"
  patch "damage", to: "pokemon#damage", as: "damage"
  devise_for :trainers
  resources :trainers
end
