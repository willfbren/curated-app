Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:new, :edit, :show, :create, :update, :destroy, :index]
  resources :comments, :categories, :projects, :users

  get '/', to: 'posts#index'

  get '/users/:id/projects', to: 'users#user_projects'

  get '/users/:id/projects/new', to: 'projects#new'

  get '/projects/:id/edit', to: 'projects#edit'

  patch 'projects/:id', to: 'projects#update'

  get '/users/:id/posts', to: 'users#user_posts'

  get '/signup', to: 'users#new'
  
  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'

end
