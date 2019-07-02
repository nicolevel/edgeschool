
Rails.application.routes.draw do
  devise_for :users
  resources :albums
  resources :stories
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :blogs
  resources :photos
  # devise_for :users

  get 'pages/contact', as: 'contact'
  post 'pages/contact', to: 'messages#create', as: 'create_message'
  get 'pages/whatweoffer', as: 'whatweoffer'
  get 'pages/whoweare', as: 'whoweare'

  get 'pages/adventure', as: 'adventure'
  get 'pages/civil', as: 'civil'
  get 'pages/leadership', as: 'leadership'
  get 'pages/social', as: 'social'
  get 'pages/capacity', as: 'capacity'

  resources :messages, only: [:index, :new, :create]
  resources :contact, only: [:index, :new, :create]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
