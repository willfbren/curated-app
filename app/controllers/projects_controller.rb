class ProjectsController < ApplicationController
    
    def new
        @project = Project.new()
    end

    def create
        Project.create(
            title: params[:project][:title],
            description: params[:project][:description],
            user_id: session[:user_id]
        )
    end
    
    def show
        @project = Project.find(params[:id])
        @user = User.find(@project.user_id)
    end

    def edit
        @project = Project.find(params[:id])
    end

    def update
        @project = Project.find(params[:id])
        @project.update(
            title: params[:project][:title],
            description: params[:project][:description]
        )

        redirect_to projects_path
    end

    def destroy
        @project = Project.find(params[:id])
        @project.destroy
        redirect_to user_projects_path
    end
    #test

end