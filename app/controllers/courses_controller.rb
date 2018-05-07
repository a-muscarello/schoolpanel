class CoursesController < ApplicationController
    def index
        @course = Course.all
        render layout: false
    end

    def show
        @course = Course.find(params[:id])
    end

    def create
        @course = Course.new(course[:id])
    end
    
    def new
        Course.new(course[:id])
    end

    def edit
        @course = Course.find(params[:idß])
    end

    def update
        @course = Course.find(params[:id])
        @course.update(course)
        redirect_to '/courses'
    end

    def delete
        Course.find(params[:id]).destroy
        redirect_to '/courses'
    end
end
