class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new()
        @projects = Project.all
        @categories = Category.all
    end

    def create
        # create new post in db and redirect to show page
    end

    def show
        @post = Post.find(params[:id])
        @comments = Comment.where(post_id: @post.id)
    end
end