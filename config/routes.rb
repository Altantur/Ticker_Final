Ticker::Application.routes.draw do

  get "poll/give"

  get "poll/index"

  get "poll/show"

  get "top/index"

  get "top/show"

  #search
  get "/search", :to => 'search#index'

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
  get '/contact', :to => 'contact#new'

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
  resources :top
  #news
  get '/news', :to=> 'news#index'
  get '/news/:id', :to=> 'news#show'

  #contact
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  match '/static', :to =>'static_pages#index'
  match '/static/:id', :to => 'static_pages#show'

  match '*page', :to => 'static_pages#error'
end