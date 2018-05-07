class CohortsController < ApplicationController
    def index
        @cohort = Cohort.all
        render layout: false
    end

    def show
        @cohort = Cohort.find(params[:id])
    end

    def create
        @cohort = Cohort.new(cohort[:id])
    end

    def new
        @cohort = Cohort.new
    end

    def edit
        @cohort = Cohort.find(params[:id])
    end

    def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort)
        redirect_to '/cohort'
    end

    def delete
        Cohort.find(params[:id]).destroy
        redirect_to '/cohorts'
    end
end
