Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "families#index"
  
  resources :families
  resources :budgets
  resources :expenditures
end
