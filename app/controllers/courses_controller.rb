class CoursesController < ApplicationController
    def index
        @course = Course.all
        # render layout: false
        # redirect_to "/course_info"
    end

    def show
        @course = Course.find(params[:id])
    end

    def create
        Course.create(course_params)
        redirect_to '/courses'
    end
    
    def new
        # Course.new(course[:id])
        @course = Course.new
    end

    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
        redirect_to '/courses'
    end

    def destroy
        @course = Course.find(params[:id])
        @course.delete
        redirect_to '/courses'
      
    end
end

private

    def course_params
        params.require(:course).permit(:name, :total_in_class_hours)
    end
