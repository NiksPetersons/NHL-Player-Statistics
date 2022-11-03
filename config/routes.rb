Rails.application.routes.draw do
  devise_for :users
  resources :players
  get "search", to: "players#search"
  root "players#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
