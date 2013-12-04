Ticker::Application.routes.draw do

  get "news/index"

  get "news/show"

  #categories
  get "categories", :to=> "categories#index"
  get "categories/:id", :to=> "categories#show"
  

  root to: 'main#home'

  #sessions
  get "sessions/new"
  get "sessions/create"
  get "sessions/failure"
  get "sessions/destroy"
  
  #user, main
  get '/contact', :to => 'main#contact'
  get '/about', :to => 'main#about'

  #login logout
  get "admins/login"
  get   '/login', :to => 'sessions#new', :as => :login
  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/auth/failure', :to => 'sessions#failure'
  get '/logout', :to => 'sessions#destroy'
  
  
  
end