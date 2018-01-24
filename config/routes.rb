Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'

<<<<<<< HEAD
  resources :prototypes, only: [:index, :new, :create, :show, :destroy, :edit] do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:index, :create]
  end
=======
  resources :prototypes, only: [:index, :new, :create, :show, :destroy, :edit, :update] do
    resources :comments, only: [:index, :create, :edit, :update, :destroy]
   end
>>>>>>> master
  resources :users, only: [:show, :edit, :update]
end


