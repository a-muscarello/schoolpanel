class StudentsController < ApplicationController
    def index
        @student = Student.all
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
        # student[:id] = @student.id
        # @student.update(params[:id])
        # redirect_to '/index'
        # respond_to do |format|
        #     if @student.save
        #         format.html { redirect_to @student, notice: 'Student was successfully created.' }
        #         format.json { render json: @student, status: :created, location: @student }
        #     else
        #         format.html { render action: "new" }
        #         format.json { render json: @student.errors, status: :unprocessable_entity }
        #     end
        # end
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        # params.require(:student).permit
        # (:first_name, :last_name, :age, :highest_education)
        @student.update(params[:id])
        # redirect_to '/index'
    end

    def delete
        Student.find(params[:id]).destroy
        redirect_to '/students'
    end
end

private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :age, :highest_education, :cohort_id)
    end