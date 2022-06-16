Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :bookings, except: [:index]
  end
  resources :articles
  resources :chatrooms, only: [:show, :create, :index] do
    resources :messages, only: :create
  end
  get 'ranking' => 'users#ranking'
end
