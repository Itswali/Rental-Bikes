Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 

  # Defines the root path route ("/")
    namespace :api do
     namespace :v1 do
       resources :items
       resources :reservations
       post '/login', to: 'sessions#create'
       post '/signup', to: 'registrations#create'
       delete '/logout', to: 'sessions#destroy'
       get '/navigation_links', to: 'navigation#links' # New route for navigation links

     end
  end
end
