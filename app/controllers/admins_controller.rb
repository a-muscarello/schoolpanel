class AdminsController < ApplicationController
    def index
        @admin = Admin.all
        render layout: false
    end

    def show
        @admin = Admin.find(params[:id])
    end

    def create
        @admin = Admin.new(admin_params[:id])
    end

    def new
        @admin = Admin.new
    end

    def edit
        @admin = Admin.find(params[:id])
    end

    def update
        @admin = Admin.find(params[:id])
        @admin.update(admin_params)
        redirect_to '/admin'
    end

    def delete
        Admin.find(params[:id]).destroy
        redirect_to '/admin'
    end
end


private

def admin_params
    params.require(:user).permit(:user_name, :password)
end
