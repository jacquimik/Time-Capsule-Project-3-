Rails.application.routes.draw do
  
  root :to => 'pages#home'

  resources :users, only: [:new, :create, :destroy, :edit, :update, :show]
  resources :children
  resources :events 
  resources :attachments
  resources :sessions, only: [:new, :create, :destroy]

  get '/about' => 'pages#about'
  get '/faq' => 'pages#faq'
  get '/loggedin' => 'pages#loggedin'

end
