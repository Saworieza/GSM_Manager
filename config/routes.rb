Rails.application.routes.draw do
  resources :scopes
  resources :statuses
  resources :sites
  resources :invoices
  resources :customer_quotes
  resources :customer_pos
  resources :cost_centers
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
