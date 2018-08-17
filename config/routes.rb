Rails.application.routes.draw do
  resources :sites
  resources :towns
  resources :regions
  resources :invoices
  resources :milestones
  resources :scopes
  resources :statuses
  resources :customerpos
  resources :customerquotes
  get 'home/index'

  resources :cost_centers
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"
end
