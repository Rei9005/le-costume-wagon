Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"



  # resources :costumes, only: [:index, :show, :new, :create] do
  #   collection do
  #     get 'search', to: 'costumes#search', as: :search
  #   end
  #   resources :reservations, only: [:new, :create]
  # end

  # resources :reservations, only: [:index]



  # get 'owner/reservations', to: 'reservations#index_owner', as: :owner_reservations
  # get 'owner/reservations/:id/edit', to: 'reservations#edit', as: :edit_reservation
  # patch 'owner/reservations/:id', to: 'reservations#update'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live
  # Defines the root path route ("/")
  # root "posts#index"
end
