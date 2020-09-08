
# Resources = instead of declaring separate routes for the actions you want to do you can simply declare them using a resourceful route
# Routes = It's a way to redirect incoming requests to controllers and actions


Rails.application.routes.draw do
  root 'home#index'
  resources :reviews
  resources :users, only: [:show] do
    resources :books, except: [:destroy]
  end
  resources :books
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/auth/facebook/callback', to: 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
