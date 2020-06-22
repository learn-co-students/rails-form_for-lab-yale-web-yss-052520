class StudentsController < ApplicationController

    before_action :find_student, only: [:show, :edit, :update]
   
    def new 
        @student = Student.new 
    end

    def show
    end

    def create
        @student = Student.create(strong_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def edit 
    end

    def update
        @student.update(strong_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def find_student
        @student = Student.find(params[:id])
    end

    private

    def strong_params(*args)
        params.require(:student).permit(*args)
    end

end