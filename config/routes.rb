Rails.application.routes.draw do
  resources :categories
  root to: 'pages#home'

  devise_for :users

  resources :photos, only: [:destroy]
  resources :users, only: [:show]
  resources :events
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :registration, only: [:create]

  get "about" => "pages#about"
end
