Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  get 'signup', to: 'users#new'  #here is the path name going to the action, signup_path, new action inside of users
  resources :users, except: [:new]
end
