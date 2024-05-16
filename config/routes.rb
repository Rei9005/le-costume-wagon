Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"



  resources :costumes, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index]


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live
  # Defines the root path route ("/")
  # root "posts#index"



  namespace :owner do
    resources :bookings, only: [:index, :update]

    # equivalent to => get 'vendor/bookings', to: 'vendor/bookings#index'
  end


end
