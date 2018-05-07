class InstructorsController < ApplicationController
    def index
        @instructor = Instructor.all
        render layout: false
    end

    def show
        @instructor = Instructor.find(params[:id])
    end

    def create
        @instructor = Instructor.new(instructor_params[:id])
    end
    
    def new
        @instructor = Instructor.new
    end

    def edit
        @instructor = Instructor.find(params[:id])
    end

    def update
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructor_params)
        redirect_to '/instructors'
    end

    def delete
        Instructor.find(params[:id]).destroy
        redirect_to '/instructors'
    end
end
