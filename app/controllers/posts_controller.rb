class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new()
        @projects = Project.all
        @categories = Category.all
    end

    def create
        # create new post in db and redirect to show page
    end
end