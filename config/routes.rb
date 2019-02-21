Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :blogs
  resources :gallery
  devise_for :users

  get 'pages/contact', as: 'contact'
  get 'pages/whatweoffer', as: 'whatweoffer'
  get 'pages/whoweare', as: 'whoweare'
  # get 'messages#new'
  # post 'messages#create'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
