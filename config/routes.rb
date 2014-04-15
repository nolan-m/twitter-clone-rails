TwitterClone::Application.routes.draw do
  devise_for :users
  resources :users, only: :show
  resources :tweets
 root to: 'users#index'

end
