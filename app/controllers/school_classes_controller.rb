class SchoolClassesController < ApplicationController
   
    before_action :find_school_class, only: [:show, :edit, :update]
   
    def new 
        @school_class = SchoolClass.new 
    end

    def show
    end

    def create
        @school_class = SchoolClass.create(strong_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    def edit 
    end

    def update
        @school_class.update(strong_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    def find_school_class
        @school_class = SchoolClass.find(params[:id])
    end

    private

    def strong_params(*args)
        params.require(:school_class).permit(*args)
    end


end