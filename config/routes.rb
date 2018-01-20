Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'

  resources :prototypes, only: [:index, :new, :create, :show, :destroy, :edit] do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:index, :create]
  end
  resources :users, only: [:show, :edit, :update]
end


