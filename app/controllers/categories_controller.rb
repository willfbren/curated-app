class CategoriesController < ApplicationController
    skip_before_action :check_login, only: [:show]
    def show
        @category = Category.find(params[:id])
    end

end