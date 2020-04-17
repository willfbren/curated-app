Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:new, :edit, :show, :create, :update, :destroy, :index]
  resources :comments, :categories, :users

  get '/', to: 'posts#index'

  get '/users/:id/posts', to: 'users#user_posts'

  get '/signup', to: 'users#new'
  
  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'

  get '/top-posts', to: 'posts#top_posts'


  resources :posts do 
    member do
      get 'like', to: 'posts#like'
      get "dislike", to: "posts#dislike"
    end
  end
end
