 Rails.application.routes.draw do

  resources :subscriptions
  devise_for :users, controllers: { registrations: "registrations" }

  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
    get 'sign_up', to: 'devise/registrations#new'
  end

  root 'static_pages#home'

  resources :products
  resources :profiles
  get 'step2', to: 'profile#step2'
  get 'step3', to: 'profile#step3'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
