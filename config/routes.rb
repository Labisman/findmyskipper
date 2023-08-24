Rails.application.routes.draw do
  devise_for :users
  root to: "listings#index"
  get "accounts/show", to: "accounts#show"

  resources :listings do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:destroy, :update, :edit, :show]
  patch "/bookings/:id/accept", to: "bookings#accept", as: "accept"
  patch "/bookings/:id/reject", to: "bookings#reject", as: "reject"
end
