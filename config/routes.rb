Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :equipment do
    resources :bookings, only:[:index,:new,:create,:show]
    patch 'bookings/:id/update_accept', to: 'bookings#update_accept', as: 'update_booking_status_accept'
    patch 'bookings/:id/update_decline', to: 'bookings#update_decline', as: 'update_booking_status_decline'
  end

  resources :bookings, only: [:index]
  # Defines the root path route ("/")
  # root "articles#index"
end
