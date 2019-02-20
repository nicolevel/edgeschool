Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :blogs
  devise_for :users
  root to: 'pages#home'
  get 'pages/contact', as: 'contact'
  get 'pages/whatweoffer', as: 'whatweoffer'
  get 'pages/whoweare', as: 'whoweare'
  resources :gallery

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
