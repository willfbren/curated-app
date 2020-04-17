class UsersController < ApplicationController
    
    # skip_before_action(:check_login, only: [:view_login, :handle_login, :new, :create])

    # def view_login
    #     render(:login)
    # end

    # def handle_login
    #     user = User.find_by({ email: params[:email] })

    #     if user.authenticate(params[:password])
    #         session[:user_id] = user.id
    #         redirect_to "/"
    #     else
    #         flash.now[:danger] = "Incorrect username/password."
    #         render :login
    #     end
    # end
    
    def new
        @user = User.new()
    end
    
    def create
   
        user = User.new(
            name: params[:user][:name],
            email: params[:user][:email],
            password: params[:user][:password],
        )

        if User.exists?(email: params[:user][:email])
            flash[:danger] = "Email already exists, please login instead."
            redirect_to "/login"
        elsif params[:user][:password] != params[:user][:confirm_password]
            flash[:danger] = "Passwords do not match."
            redirect_to "/signup"
        elsif user.valid?
            user.save
            log_in user
            flash[:success] = "Welcome to Curated!"

            redirect_to user_path(User.last.id)
        else 
            flash[:danger] = user.errors.full_messages[0]
            redirect_to "/signup"
        end
        # if User.exists?(email: params[:user][:email])
            
        # else

        #     if(user.valid?)
        #         log_in user
        #         flash[:success] = "Welcome to Curated!"

        #         redirect_to user_path(User.last.id)
        #     else
        #         flash[:error_messages] = user.errors.full_messages[0]
        #         redirect_to "/users/new"
        #     end
        # end
    end

    def show
        @user = User.find(params[:id])
        render :user_posts
    end

    def 

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

    def user_posts
        @user = User.find(params[:id])
    end


    # def logout
    #     session.destroy
    #     @current_user = nil
    #     render :login
    # end

end