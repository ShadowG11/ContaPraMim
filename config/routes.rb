Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  resources :users
  resources :transactions
  get    'sign_in'  => 'sessions#new'
  post   'sign_in'  => 'sessions#create'
  delete 'sign_out' => 'sessions#destroy'
end
