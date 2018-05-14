class CohortsController < ApplicationController
    def index
        @cohort = Cohort.all
        # render layout: false
    end

    def show
        @cohort = Cohort.find(params[:id])
    end

    def create
        Cohort.create(cohort_params)
        redirect_to '/cohorts'
    end

    def new
        @cohort = Cohort.new
    end

    def edit
        @cohort = Cohort.find(params[:id])
    end

    def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)
        redirect_to '/cohorts'
    end

    def destroy
        @cohort = Cohort.find(params[:id])
        @cohort.delete
        redirect_to '/cohorts'
    end
end


private

    def cohort_params
        params.require(:cohort).permit(:name, :start_date, :end_date, :instructor_name, :course_id, :id)
    end
