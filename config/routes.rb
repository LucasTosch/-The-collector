Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :bookings
  end
  resources :articles
  resources :chatrooms, only: [:show, :create, :index, :destroy] do
    resources :messages, only: :create
  end
  get 'aboutus' => 'pages#aboutus'
  get 'fiable' => 'pages#fiable'
  get 'echange' => 'pages#echange'
  get 'duel' => 'pages#duel'
end
