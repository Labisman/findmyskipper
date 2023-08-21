Rails.application.routes.draw do
  devise_for :users
  root to: "listings#index"
  resources :listings do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy, :update, :edit, :index]
end
