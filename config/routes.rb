Rails.application.routes.draw do
  root to: "airports#index"
  resources :airports, only: [:index]
  resources :bookings, only: [:show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
