Rails.application.routes.draw do
  root 'static#welcome'

  get '/signup' => 'users#new'

  get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'

  delete '/logout' =>'sessions#destroy'

  get '/about' => 'static#about'
  
  resources :users

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmler.re

end
