class AdminsController < ApplicationController
    def index
        @home_page = true
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
end


private

    def admin_params
        params.require(:admin).permit(:user_name, :password)
    end

    
    
# class PostsController < ApplicationController
#     before_action :authorize_admin, only: [:index]
    
#     private
#     def authorize_admin
#         redirect_to root_path, alert: "Permissions denied" unless
#         current_user.admin?
#     end
# end