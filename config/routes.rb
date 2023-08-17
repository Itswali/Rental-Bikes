Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :sessions
  resources :registrations
  namespace :api do
     namespace :v1 do
       resources :items
       resources :reservations
     end
  end
end
