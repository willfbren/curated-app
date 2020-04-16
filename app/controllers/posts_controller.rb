class PostsController < ApplicationController

    # skip_before_action :check_login, only: [:show,:index]
    
    def index
        @posts = Post.all.order("created_at DESC")
    end

    def new
        @post = Post.new()
        @categories = Category.all
    end

    def show
        @post = Post.find(params[:id])
        @comments = Comment.where(post_id: @post.id)
        @user = @post.user
    end

    def create
        @post = Post.create(
            title: params[:post][:title],
            description: params[:post][:description],
            image_url: params[:post][:image_url],
            user_id: current_user.id,
            category_id: params[:post][:category_id]
        )
        if @post.valid?
            redirect_to post_path(Post.last.id)
        else
            flash[:error_messages] = @post.errors.full_messages[0]
            redirect_to '/posts/new'
        end

        
    end

    def edit
        @post = Post.find(params[:id])
        @categories = Category.all
    end

    def update
        # set user to current user id
        @post = Post.find(params[:id])
        @post.update(
            title: params[:post][:title],
            description: params[:post][:description],
            image_url: params[:post][:image_url],
            user_id: current_user.id,
            category_id: params[:post][:category_id]
        )
        
        redirect_to post_path(@post.id)
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to "/"
    end

    def new_comment
        redirect_to("/comments/new")
    end
    
end