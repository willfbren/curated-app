Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:new, :edit, :show, :create, :update, :destroy]
  resources :comments, :categories, :projects, :users

  get '/', to: 'posts#index'
  
end
