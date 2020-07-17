Rails.application.routes.draw do
  
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
   # resources :users, only: [:show]
    resources :players
    resources :worlds
    resources :characters
  

   root "players#home"
 
  

  devise_for :users, controllers: {
    registrations: "registrations",
    omniauth_callbacks: "callbacks" 
  }
    

  devise_scope :user do 
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do 
    get 'logout', to: 'devise/sessions#destroy'
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
