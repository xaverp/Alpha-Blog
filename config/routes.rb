Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  get 'signup', to: 'users#new'  #here is the path name going to the action, signup_path, new action inside of users
  resources :users, except: [:new]
  get 'login', to: 'sessions#new' #SESSIONS CONTROLLER, NEW ACTION
  post 'login', to: 'sessions#create' # CREATE ACTION 
  delete 'logout', to: 'sessions#destroy' #DESTROY ACTION TO END SESSION
end
