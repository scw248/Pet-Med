# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#show'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users, only: [:show] do
    resources :pets, only: %i[show index new edit]
  end

  resources :users, only: [:show] do
    resources :appointments, only: %i[show index new edit]
  end

  resources :vet_providers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
