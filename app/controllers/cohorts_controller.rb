class CohortsController < ApplicationController
    def index
        @cohort = Cohort.all
        # render layout: false
    end

    def create

        # def create
        #     @cohort = Cohort.new(cohort_params)
        
        #     respond_to do |format|
        #       if @cohort.save
        #         format.html { redirect_to @cohort, notice: 'Cohort was successfully created.' }
        #         format.json { render :show, status: :created, location: @cohort }
        #       else
        #         format.html { render :new }
        #         format.json { render json: @herb.errors, status: :unprocessable_entity }
        #       end
        #     end
        #   end

        @cohort = Cohort.create(cohort_params)
        # @cohort = Cohort.create(params[:id])
        redirect_to '/cohorts'
    end

    
    def new
        @cohort = Cohort.new
    end

    def show
        @cohort = Cohort.find(params[:id])
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


private

    def cohort_params
        params.require(:cohort).permit(:name, :start_date, :end_date, :instructor_name, :course_id, :id)
    end
    
end