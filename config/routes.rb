Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # Defines the root path route ("/")
    namespace :api do
     namespace :v1 do
       resources :items
       resources :reservations
     end
  end
end
