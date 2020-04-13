class PostsController < ApplicationController
    def show
        @post = Post.find(params[:id])
        @comments = Comment.where(post_id: @post.id)
    end
end