Rails.application.routes.draw do
 root to: 'pages#home'
 
 get 'about', to: 'pages#about'
 get 'submit', to: 'pages#submit'
 get 'search', to: 'pages#search'
 
 resources :users
 post 'users', to: 'users#create'
 
 resources :contacts
 get 'contact-us', to: 'contacts#new'
 
end
