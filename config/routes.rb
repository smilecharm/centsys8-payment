Rails.application.routes.draw do
  resources :code_paymethods
  resources :members
  resources :plans
  resources :code_weekdays
  resources :code_newors
  resources :code_services
  resources :code_centers
  resources :code_paykinds
  resources :code_sexes
  resources :boards
  resources :clients
  resources :payments
  resources :profiles
  # devise_for :users
  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :schedules
  get '/' => 'schedules#index'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
