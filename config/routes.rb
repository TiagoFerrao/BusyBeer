Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show, :edit, :update]

  resources :jobs

  resources :bookings do
    post "accept", to: "bookings#accept"
    resources :messages
  end

  root to: 'pages#home'

end
