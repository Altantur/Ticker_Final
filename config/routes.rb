Ticker::Application.routes.draw do

  #root to: 'main#home'
  root to: 'news#index'

  #admin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  #sessions
  get "sessions/new"
  get "sessions/create"
  get "sessions/failure"
  get "sessions/destroy"
  
  #user, main
  get "users/new"
  get '/about', :to=>'main#about'
  get '/contact', :to => 'contact#new'

  #login logout
  get   '/login', :to => 'sessions#new', :as => :login
  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/auth/failure', :to => 'sessions#failure'
  get '/logout', :to => 'sessions#destroy'
  
  # See how all your routes lay out with "rake routes"

  #categories
  get '/categories', :to=> 'categories#index'
  get '/categories/:id', :to=> 'categories#show'

  #news
  get '/news', :to=> 'news#index'
  get '/news/:id', :to=> 'news#show'

  #contact
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

end