Rails.application.routes.draw do
  
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
   # resources :users, only: [:show]
    #resources :users
    resources :worlds
    resources :characters
  

   root "worlds#home"
 
   get '/search' => 'worlds#search', :as => 'search_page'

  devise_for :users, controllers: {
    registrations: "registrations",
    omniauth_callbacks: "callbacks" 
  }
    

  devise_scope :user do 
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do 
    get 'signout', to: 'devise/sessions#destroy'
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
