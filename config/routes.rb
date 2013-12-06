Ticker::Application.routes.draw do

  get "product/index"

  get "product/show"

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
  get '/contact', :to => 'main#contact'

  #login logout
  get   '/login', :to => 'sessions#new', :as => :login
  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/auth/failure', :to => 'sessions#failure'
  get '/logout', :to => 'sessions#destroy'
  
  # See how all your routes lay out with "rake routes"

  #categories
  #get '/categories', :to=> 'categories#index'
  #get '/categories/:id', :to=> 'categories#show'
  match '/categories/:name', :to => 'categories#show', :as => :name
  resources :categories
  #news
  get '/news', :to=> 'news#index'
  get '/news/:id', :to=> 'news#show'

end