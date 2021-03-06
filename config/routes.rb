Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :dresses do
    resources :bookings, only:[ :new, :create ]
    resources :reviews, only: [ :new, :create ]
  end

  resources :bookings, only:[ :index, :destroy ]
  resources :reviews, only:[ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
