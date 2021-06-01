  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :shops do
    resources :products
  end
  #For the User Model, a user can only create an account aka signup:
    # This is the sign up form
  get '/signup' => 'users#new'
    # This creates a new user in the database using the data provided by the user
  post '/users' => 'users#create'
    # Testing...
  # get '/user_check' => 'users#index'
end
