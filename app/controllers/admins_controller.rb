class AdminsController < ApplicationController
    # before_filter :authorize_admin, only: [:new, :create, :edit]
    
    # before_action :zero_authors_or_authenticated, only: [:new, :create]
    before_action :require_login

    def index
        current_user.articles
        # @admin = Admin.all
        # render layout: false
    end

    def show
        @admin = Admin.find(params[:id])
    end

    def new
        @admin = Admin.new
    end

    def create
        Admin.create(admin_params)
        redirect_to '/admins'
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
        @admin = Admin.find(params[:id])
        @admin.delete
        redirect_to '/admins'
    end
end
    # def authorize_admin
    #     return unless !current_user.admin?
    #     redirect_to root_path
    # end

private

    def admin_params
        params.require(:admin).permit(:user_name, :password, :id)
    end