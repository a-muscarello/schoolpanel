class CohortInstructorsController < ApplicationController

    def index
        @cohort_instructor = CohortInstructor.all
        # render layout: false
    end

    def show
        @cohort_instructor = CohortInstructor.find(params[:id])
    end

    def new
        @cohort_instructor = CohortInstructor.new
    end

    def create
        CohortInstructor.create(cohort_instructor_params)
        redirect_to '/cohort_instructors'
    end

    def edit
        @cohort_instructor = CohortInstructor.find(params[:id])
    end

    def update
        @cohort_instructor = CohortInstructor.find(params[:id])
        @cohort_instructor.update(cohort_instructor_params)
        redirect_to '/cohort_instructors'
    end

    def destroy
        @cohort_instructor = CohortInstructor.find(params[:id])
        @cohort_instructor.delete
        redirect_to '/cohort_instructors'
    end
end

private

    def cohort_instructor_params
        params.require(:cohort_instructor).permit(:cohort_id, :instructor_id, :id)
    end
