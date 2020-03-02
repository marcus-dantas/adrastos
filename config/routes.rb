Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :articles do
    resources :discussons, only: [:new, :create]
  end
  resources :discussions, only: [:show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
  resources :comments, only: :destroy
end
