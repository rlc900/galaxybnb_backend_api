Rails.application.routes.draw do
  resources :bookings
  resources :planets
  resources :locations
  resources :reviews
  resources :types
  resources :users

  # CUSTOM ROUTES

  post '/login', to: "users#login"
  post '/signup', to: 'users#create'
  post '/charges', to: 'charges#create'
  get '/persist', to: 'users#persist'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
