# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :vet_providers
  resources :appointments
  resources :pets

  resources :users, only: [:show] do
    resources :pets, only: %i[show index]
  end

  resources :users, only: [:show] do
    resources :appointments, only: %i[show index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
