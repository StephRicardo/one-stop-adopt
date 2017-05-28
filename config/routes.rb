Rails.application.routes.draw do
  root 'static#welcome'

  get '/signup' => 'users#new'
  post '/signup' =>'users#create'

  get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
  delete '/logout' =>'sessions#destroy'

  get '/about' => 'static#about'

	# This will be removed when the users#index and accompanying features are added
	# If we use user#index, we need to include a link to that page in the nav bar
  get '/users' => 'users#new'
  
  resources :users

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmler.re

end
