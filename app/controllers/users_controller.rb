class UsersController < ApplicationController
    
    skip_before_action(:check_login, only: [:view_login, :handle_login, :new, :create])

    def view_login
        render(:login)
    end

    def handle_login
        user = User.find_by(email: params[:user][:email])

        if user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to "/"
        else
            p "Login failed."
        end
    end
    
    def new
        @user = User.new()
    end
    
    def create
        if User.exists?(email: params[:user][:email])
            redirect_to "/signup"
        else
            User.create(
                name: params[:user][:name],
                email: params[:user][:email],
                password: params[:user][:password]
            )

            redirect_to user_path(User.last.id)
        end
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