class UsersController < ApplicationController
    
    def new
        @user = User.new()
    end
    
    def create
        User.create(
            name: params[:user][:name],
            email: params[:user][:email],
            password: params[:user][:password],
            confirm_password: params[:user][:confirm_password]
        )

        redirect_to user_path(User.last.id)
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(
            name: params[:user][:name],
            email: params[:user][:email],
            password: params[:user][:password],
            confirm_password: params[:user][:confirm_password]
        )

        redirect_to user_path(@user.id)
    end

end