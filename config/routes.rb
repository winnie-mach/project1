# == Route Map
#
#         Prefix Verb   URI Pattern                    Controller#Action
#           root GET    /                              pages#home
#          works GET    /works(.:format)               works#index
#                POST   /works(.:format)               works#create
#       new_work GET    /works/new(.:format)           works#new
#      edit_work GET    /works/:id/edit(.:format)      works#edit
#           work GET    /works/:id(.:format)           works#show
#                PATCH  /works/:id(.:format)           works#update
#                PUT    /works/:id(.:format)           works#update
#                DELETE /works/:id(.:format)           works#destroy
# favourite_work PUT    /works/:id/favourite(.:format) works#favourite
#                GET    /works(.:format)               works#index
#                POST   /works(.:format)               works#create
#                GET    /works/new(.:format)           works#new
#                GET    /works/:id/edit(.:format)      works#edit
#                GET    /works/:id(.:format)           works#show
#                PATCH  /works/:id(.:format)           works#update
#                PUT    /works/:id(.:format)           works#update
#                DELETE /works/:id(.:format)           works#destroy
#          users POST   /users(.:format)               users#create
#       new_user GET    /users/new(.:format)           users#new
#      edit_user GET    /users/:id/edit(.:format)      users#edit
#           user GET    /users/:id(.:format)           users#show
#                PATCH  /users/:id(.:format)           users#update
#                PUT    /users/:id(.:format)           users#update
#                DELETE /users/:id(.:format)           users#destroy
#          login GET    /login(.:format)               session#new
#                POST   /login(.:format)               session#create
#                DELETE /login(.:format)               session#destroy
#

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'
  resources :works
  resources :works do
   put 'favourite' => "favourites#create"
   delete 'favourite' => "favourites#destroy"
 end
  resources :users, :except => [:index]

  get 'login' => 'session#new' #singular as every user gets their own session. Sign in form.
  post '/login' => 'session#create' #Sign in action
  delete '/login' => 'session#destroy' #Sign out
end
