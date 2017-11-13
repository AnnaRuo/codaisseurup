Rails.application.routes.draw do
  resources :categories
  root to: 'pages#home'

  devise_for :users

  resources :profiles, only: [:new, :edit, :create, :update]
  resources :photos, only: [:destroy]
  resources :users, only: [:show]
  resources :events do
    resources :registrations, only: [:create]
  end

  get "about" => "pages#about"
end
