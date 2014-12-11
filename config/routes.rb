# == Route Map
#
#          Prefix Verb   URI Pattern                     Controller#Action
#            root GET    /                               pages#home
#           users POST   /users(.:format)                users#create
#        new_user GET    /users/new(.:format)            users#new
#       edit_user GET    /users/:id/edit(.:format)       users#edit
#            user GET    /users/:id(.:format)            users#show
#                 PATCH  /users/:id(.:format)            users#update
#                 PUT    /users/:id(.:format)            users#update
#                 DELETE /users/:id(.:format)            users#destroy
#        children GET    /children(.:format)             children#index
#                 POST   /children(.:format)             children#create
#       new_child GET    /children/new(.:format)         children#new
#      edit_child GET    /children/:id/edit(.:format)    children#edit
#           child GET    /children/:id(.:format)         children#show
#                 PATCH  /children/:id(.:format)         children#update
#                 PUT    /children/:id(.:format)         children#update
#                 DELETE /children/:id(.:format)         children#destroy
#          events GET    /events(.:format)               events#index
#                 POST   /events(.:format)               events#create
#       new_event GET    /events/new(.:format)           events#new
#      edit_event GET    /events/:id/edit(.:format)      events#edit
#           event GET    /events/:id(.:format)           events#show
#                 PATCH  /events/:id(.:format)           events#update
#                 PUT    /events/:id(.:format)           events#update
#                 DELETE /events/:id(.:format)           events#destroy
#     attachments GET    /attachments(.:format)          attachments#index
#                 POST   /attachments(.:format)          attachments#create
#  new_attachment GET    /attachments/new(.:format)      attachments#new
# edit_attachment GET    /attachments/:id/edit(.:format) attachments#edit
#      attachment GET    /attachments/:id(.:format)      attachments#show
#                 PATCH  /attachments/:id(.:format)      attachments#update
#                 PUT    /attachments/:id(.:format)      attachments#update
#                 DELETE /attachments/:id(.:format)      attachments#destroy
#        sessions POST   /sessions(.:format)             sessions#create
#     new_session GET    /sessions/new(.:format)         sessions#new
#         session DELETE /sessions/:id(.:format)         sessions#destroy
#           login GET    /login(.:format)                sessions#new
#                 POST   /login(.:format)                sessions#create
#                 DELETE /login(.:format)                sessions#destroy
#           about GET    /about(.:format)                pages#about
#             faq GET    /faq(.:format)                  pages#faq
#        loggedin GET    /loggedin(.:format)             pages#loggedin
#

Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, except: [:index]
  resources :children do
    resources :events
  end

  resources :attachments
  resource :session, only: [:new, :create, :destroy]
  
  get '/about' => 'pages#about'
  get '/faq' => 'pages#faq'
  get '/loggedin' => 'pages#loggedin'

end
