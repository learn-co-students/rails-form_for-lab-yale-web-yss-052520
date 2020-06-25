class StudentsController < ApplicationController

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student.update(student_params)
    redirect_to student_path(@student)
    end


    def student_params
        params.require(:student).permit(:title, :room_number)
    end
end