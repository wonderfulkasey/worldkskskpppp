Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  } 

  root to: "players#home"
  
  resources :players
  resources :worlds
  resources :characters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
