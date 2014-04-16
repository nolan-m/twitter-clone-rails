TwitterClone::Application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users, only: :show
  resources :tweets
  resources :relationships, only: [:create, :destroy]
  root to: 'users#index'

end
