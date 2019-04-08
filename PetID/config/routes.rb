Rails.application.routes.draw do
  resources :vet_providers
  resources :appointments
  resources :pets
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  # devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

end
