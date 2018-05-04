class StudentsController < ApplicationController
    def index
        @student = Student.all
        render layout: false
    end

    def show

    end

    def create
        @student = Student.new(student_params[:id])
    end

    def new
        @student = Student.new
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to '/students'
    end

    def delete
        Student.find(params[:id]).destroy
        redirect_to '/students'
    end
end
