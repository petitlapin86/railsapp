Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
    #BELOW IS THE MANUAL EQUIVALENT TO THE SHORTCUT :comments
    #get '/comments', to: 'comments#index', as: 'comments'
    #post '/comments', to: 'comments#create'
    #get '/comments/new', to: 'comments#new', as: 'new_comment'
    #get '/comments/:id', to: 'comments#show', as: 'comment'
    #get '/comments/:id/edit', to: 'comments#edit', as: 'edit_comment'
    #patch '/comments/:id', to: 'comments#update'
    #delete '/comments/:id', to: 'comments#destroy'
  end
  resources :pages
  #BELOW IS THE MANUAL EQUIVALENT TO THE SHORTCUT :pages ABOVE:

  #get '/pages', to: 'pages#index' #get request should go to the pages controllers index method
  #post '/pages', to: 'pages#create' #call post method route all posts to create method
  #get '/pages/new', to: 'pages#new', as: 'new_page'
  #get '/pages/:id', to: 'pages#show', as: 'page' # a :id is a url parameter
  #get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page' #controller action that takes a get request and responds with html form
  #patch '/pages/:id', to: 'pages#update' # create a patch route
  #delete '/pages/:id', to: 'pages#destroy' #call delete method route to pages_controller destroy method
end
