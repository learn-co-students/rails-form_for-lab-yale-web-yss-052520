class StudentsController < ApplicationController
    
    before_action :find_object, only: [:show, :edit, :update]
    
    def new
        @student = Student.new
    end

    def create
        @student = Student.create(strong_params)
        redirect_to @student
    end

    def show
    end

    def edit
    end

    def update
        @student = Student.update(strong_params)
        redirect_to @student
    end

    private

    def find_object
        @student = Student.find(params[:id])
    end

    def strong_params
        params.require(:student).permit(:first_name, :last_name)
    end

end