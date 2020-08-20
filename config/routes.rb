Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'dashboard', to: 'users#dashboard'

  resources :search, only: [:index]

  resources :offers do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show]
end
