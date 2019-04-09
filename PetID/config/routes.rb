Rails.application.routes.draw do
  root 'home#index'

  resources :vet_providers
  resources :appointments
  resources :pets
  devise_for :users

  resources :users, only: [:show] do
    resources :pets, only: [:show]
  end

  resources :users, only: [:show] do
    resources :appointments, only: [:show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

end
