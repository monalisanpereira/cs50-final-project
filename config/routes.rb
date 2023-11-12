Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'families#index'
  get  'signup', to: 'users#new' 
  get  'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy' 
  resources :users
  resources :families
  resources :budgets
  resources :expenditures
end
