Rails.application.routes.draw do
  resources :sites
  resources :towns
  resources :milestones
  resources :scopes
  resources :customerpos
  resources :invoices
  resources :statuses
  get 'home/index'

  resources :customerquotes
  resources :cost_centers
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"
end
