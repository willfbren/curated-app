class PostsController < ApplicationController
    # skip_before_action :check_login, only: [:show,:index]
    impressionist actions: [:show]

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
        if params[:post][:category_name].empty?
            @post = Post.create(
                title: params[:post][:title],
                description: params[:post][:description],
                image_url: params[:post][:image_url],
                user_id: current_user.id,
                category_id: params[:post][:category_id]
            )
        else
            category = Category.create(name: params[:post][:category_name])
            @post = Post.create(
                title: params[:post][:title],
                description: params[:post][:description],
                image_url: params[:post][:image_url],
                user_id: current_user.id,
                category_id: category.id
            )
        end

        if @post.valid?
            redirect_to post_path(Post.last.id)
        else
            flash[:warning] = @post.errors.full_messages[0]
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

    def like 
        @post = Post.find(params[:id])
        
        if @post.votes_for.voters.include?(current_user)
            @post.unliked_by current_user 
        else
            @post.liked_by current_user
        end
        
        redirect_to @post
    end  
    
    def top_posts
        @posts = Post.all.sort_by {|post| post.votes_for.size}.reverse
    end

end