Rails.application.routes.draw do
  root "home#index"
  resources :types, only: [:new, :create]
  devise_for :users
end
