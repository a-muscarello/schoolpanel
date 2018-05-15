class HomesController < ApplicationController

    # skip_before_action :authenticate_user!

    # before_action :check_auth

    # def check_auth
    #     unless user_signed_in?
    #         redirect_to '/landing_page'
    #     end
    # end

    def home
    end

#     def index
#         @home = Home.all
#     end

#     def show
#         @home = Home.find(params[:id])
#     end

#     def new
#         @home = Home.new
#     end

#     def create
#         Home.create(home)
#         redirect_to '/home'
#     end

#     def edit
#         @home = Home.find(params[:id])
#     end

#     def update
#         @home = Home.find(params[:id])
#         @home.update(home)
#         redirect_to '/home'
#     end

#     def destroy
#         @home = Home.find(params[:id])
#         @home.delete
#         redirect_to '/home'
#     end
# end

private

    def home_params
        params.require(:home).permit(:first_name, :last_name, :age, :highest_education, :cohort_id, :id)
    end
    
end
