Rails.application.routes.draw do
  resources :scopes
  resources :statuses
  resources :sites
  resources :invoices
  resources :customerpos
  resources :customerquotes
  resources :cost_centers
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "accounts#index"
end
