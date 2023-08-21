Rails.application.routes.draw do
  devise_for :users
  root to: "listings#index"
  resources :listings do
    resources :bookings, only: [:new, :create, :update, :edit, :index]
  end
  resources :bookings, only: [:destroy]
end
