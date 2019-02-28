xRails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :articles
  resources :blogs
  resources :gallery
  devise_for :users

  get 'pages/contact', as: 'contact'
  get 'pages/whatweoffer', as: 'whatweoffer'
  get 'pages/whoweare', as: 'whoweare'

  get 'pages/adventure', as: 'adventure'
  get 'pages/civil', as: 'civil'
  get 'pages/leadership', as: 'leadership'
  get 'pages/social', as: 'social'
  get 'pages/capacity', as: 'capacity'

  resources :gallery
  resources :messages, only: [:index, :new, :create]
  resources :contact, only: [:index, :new, :create]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
