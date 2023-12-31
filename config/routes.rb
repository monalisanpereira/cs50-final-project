Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root   'pages#home'
  get    'signup', to: 'users#new'
  get    'profile', to: 'users#edit'
  get    'login', to: 'sessions#new'
  post   'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users, only: [:create, :edit, :update, :destroy]
  resources :families do
    member do
      get 'manage-members', to: 'families#manage_members'
    end
  end
  resources :family_members
  resources :budgets
  resources :expenditures
end
