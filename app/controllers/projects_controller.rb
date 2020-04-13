class ProjectsController < ApplicationController
    def show
        @project = Project.find(params[:id])
        @user = User.find(@project.user_id)
    end
end