Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :articles do
    resources :discussions, only: [:new, :create, :index]
  end
  resources :discussions, only: [:show, :edit, :update, :destroy] do
    resources :sub_discussions, only: [:create, :new, :index]
  end
  resources :sub_discussions, only: [:show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
  resources :comments, only: :destroy
end
