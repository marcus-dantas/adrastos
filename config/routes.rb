Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :articles do
    resources :discussions, only: [:new, :create, :index, :show]
  end
  resources :discussions, only: [:edit, :update, :destroy] do
    resources :comments, only: :create
  end
  resources :comments, only: :destroy
end
