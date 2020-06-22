class StudentsController < ApplicationController

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end

    def edit
        @student = the_student
    end

    def update
        @student = the_student
        @student.update(student_params)
        redirect_to student_path(@student)
    end

    def show
        @student = the_student
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

    def the_student
        Student.find(params[:id])
    end
end
