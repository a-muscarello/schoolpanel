class StaticPagesController < ApplicationController
    def home
        
        # redirect_to new_student_path
    end

    # def '/user/login' do 
    #     @user = User.find_by(email: params[:email], password: params[:password])
    #     if @user != admin1
    #         session[:id] = @user.id
    #         redirect '/home/homepage'
    #     else   
    #         redirect '/home/index'
    #     end 
    # end
    
    # def index
    #     if !logged_in? && !session[:visited_courses_path]
    #         redirect_to courses_path
    #     else
    #     # Render the main view of goldhat.org
    #     end
    end
        
    private

    def course_params
        params.require(:course).permit(:first_name, :last_name, :age, :highest_education, :cohort_id)
    end

end
