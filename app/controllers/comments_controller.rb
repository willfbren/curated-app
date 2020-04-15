class CommentsController < ApplicationController

    def create

        @comment = Comment.create({
            content: params[:content],
            post_id: params[:post_id],
            user_id: session[:user_id]
        })
        redirect_to("/posts/#{params[:post_id]}")
    end


    # I don't think we'll need anymore routes for comments if we are making the comments in the posts 'show' page


end