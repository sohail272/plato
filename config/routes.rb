Rails.application.routes.draw do
  root to: "home#index"
  
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    invitations: 'users/invitations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
  },path: 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [] do
    member do 
      get :dashboard
    end 
  end
  namespace :users do
    resources :boards, only: [:show]
  end

  
  resources :home, only: [:index] do
    collection do
        get :organization
    end
    
  end
end
