Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:new, :edit, :show, :create, :update, :destroy,:index]
  resources :comments, :categories, :projects, :users

  get '/', to: 'posts#index'
  
  # get '/login', to: 'users#view_login'

  # post '/login', to: 'users#handle_login'

  get '/users/:id/projects', to: 'users#user_projects'

  get '/users/:id/projects/new', to: 'projects#new'

  get '/users/:id/projects/:project_id/edit', to: 'projects#edit'

  patch '/users/:id/projects/:project_id', to: 'projects#update'

  get '/users/:id/posts', to: 'users#user_posts'

  get '/signup', to: 'users#new'
  
  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  # get '/logout', to: 'sessions#logout'

  get '/logout', to: 'sessions#destroy'

end
