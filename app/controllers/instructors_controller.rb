class InstructorsController < ApplicationController
    def index
        @instructor = Instructor.all
        # render layout: false
    end

    def show
        @instructor = Instructor.find(params[:id])
    end

    def create
        @new_instructor = Instructor.create(instructor_params)
        # Instructor.create(instructor_params)
        redirect_to '/instructors'
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

    def destroy
        @instructor = Instructor.find(params[:id])
        @instructor.destroy
        redirect_to '/instructors'
    end
end

private

    def instructor_params
        params.require(:instructor).permit(:first_name, :last_name, :age, :salary, :highest_education, :cohort_id, :id)
    end
