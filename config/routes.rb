Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :blogs
  devise_for :users
  root to: 'pages#home'
  resources :pages
  resources :gallery

  get 'pages/contact'  => "pages#contact"
  get 'pages/whatweoffer' => "pages#whatweoffer"
  get 'pages/whoweare' => "pages#whoweare"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
