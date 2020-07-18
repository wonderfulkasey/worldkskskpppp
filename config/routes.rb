Rails.application.routes.draw do
  
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
   # resources :users, only: [:show]
<<<<<<< HEAD
    #resources :users
=======
    resources :users
>>>>>>> 2b8a38a5d8ef376e94442a83052b4e766c296897
    resources :worlds
    resources :characters
  

<<<<<<< HEAD
   root "worlds#home"
=======
   root "users#home"
>>>>>>> 2b8a38a5d8ef376e94442a83052b4e766c296897
 
  

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
