class StudentsController < ApplicationController
    def index
        @student = Student.all
        # render layout: false
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def create
        Student.create(student_params)
        redirect_to '/students'
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to '/students'
    end

    def destroy
        @student = Student.find(params[:id])
        @student.delete
        redirect_to '/students'
    end
end

private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :age, :highest_education, :cohort_id, :id)
    end
    
