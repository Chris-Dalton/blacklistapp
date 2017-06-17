Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
 root to: 'pages#home'
 
 get 'about', to: 'pages#about'
 get 'submit', to: 'pages#submit'
 get 'search', to: 'pages#search'
 
 resources :contacts, only: :create
 
 get 'contact-us', to: 'contacts#new', as: 'new_contact'
 
end
