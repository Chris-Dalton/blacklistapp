Rails.application.routes.draw do
 root to: 'pages#home'
 get 'about', to: 'pages#about'
 get 'submit', to: 'pages#submit'
 get 'search', to: 'pages#search'
 post 'users', to: 'users#create'
 
 resources :users
 resources :contacts
 
end
