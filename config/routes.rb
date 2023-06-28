Rails.application.routes.draw do
  resources :products
  
  
  mount Thredded::Engine => '/forum'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "users/:id", to: "profiles#show"
  # Defines the root path route ("/")
  root "products#index"
end
