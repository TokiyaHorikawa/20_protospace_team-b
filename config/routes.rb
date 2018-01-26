Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  get 'prototypes/sort_popular'  => 'prototypes#sort_popular'
  resources :prototypes, only: [:index, :new, :create, :show, :destroy, :edit, :update] do
    resources :comments, only: [:index, :create, :edit, :update, :destroy]
    resources :likes, only: [:create, :destroy]
   end
  resources :users, only: [:show, :edit, :update]
end
