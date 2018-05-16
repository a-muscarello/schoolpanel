class CohortStudentsController < ApplicationController

    def index
        @cohort_student = CohortStudent.all
    end

    def show
        @cohort_student = CohortStudent.find(params[:id])
    end

    def new
        @cohort_student = CohortStudent.new
    end

    def create
        CohortStudent.create(cohort_student_params)
        redirect_to '/cohort_students'
    end

    def edit
        @cohort_student = CohortStudent.find(params[:id])
    end

    def update
        @cohort_student = CohortStudent.find(params[:id])
        @cohort_student.update(cohort_student_params)
        redirect_to '/cohort_students'
    end

    def destroy
        @cohort_student = CohortStudent.find(params[:id])
        @cohort_student.delete
        redirect_to '/cohort_students'
    end


private

    def cohort_student_params
        params.require(:cohort_student).permit(:cohort_id, :student_id, :id)
    end
    
end