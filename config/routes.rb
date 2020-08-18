Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show]

  resources :offers do
    resources :bookings, only: [:new, :create]
  end
end
