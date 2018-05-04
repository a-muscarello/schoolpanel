class AdminsController < ApplicationController
    def index
        @admin = Admin .all
    end

    def show

    end

    def create

    end

    def new

    end

    def edit
        @admin = Admin.find(params[:id])
    end

    def update
        @admin = Admin.find(params[:id])
        @admin.update(instructor_params)
        redirect_to '/admin'
    end

    def delete
        Admin.find(params[:id]).destroy
        redirect_to '/admin'
    end
end
