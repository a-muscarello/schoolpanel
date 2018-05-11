class AdminsController < ApplicationController
    # before_filter :authorize_admin, only: [:new, :create, :edit]
    
    def index
        @admin = Admin.all
        render layout: false
    end

    def show
        @admin = Admin.find(params[:id])
    end

    def create
        Admin.create(admin_params)
        redirect_to '/admins'
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
        redirect_to '/admins'
    end

    def destroy
        @admin = Admin.find(params[:id])@admin.delete
        redirect_to '/admins'
    end


    # def authorize_admin
    #     return unless !current_user.admin?
    #     redirect_to root_path
    # end
end


private

    def admin_params
        params.require(:admin).permit(:user_name, :password)
    end