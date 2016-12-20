 Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }
  #devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
    get 'sign_up', to: 'devise/registrations#new'
  end

  root 'static_pages#home'

  resources :products
  resources :profiles
  resources :order #, only: [:show]

  get 'cart/:id', as: 'cart', to: 'order_item#create'
  get 'delete/:id', as: 'delete', to: 'order_item#delete'
  get 'step2', to: 'profile#step2'
  get 'step3', to: 'profile#step3'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
