class StudentsController < ApplicationController
    def show
        @student = Student.find(params[:id])
      end
    
      def new
        @student = Student.new
      end
    
      def edit
        @student = Student.find(params[:id])
      end
    
      def create
        @student = Student.new(student_params_ok)
        @student.save
        redirect_to student_path(@student)
      end
    
      def update
        @student = Student.find(params[:id])
        @student.update(student_params_ok)
        redirect_to student_path(@student)
      end

      def student_params_ok
        params.require(:student).permit!
      end
    
end
