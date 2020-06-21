class SchoolClassesController < ApplicationController
    def show 
        @school_class = SchoolClass.find(params[:id])
    end 
    
    def new
        @school_class = SchoolClass.new 
    end 

    def create 
        @new_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
        @new_class.title = params[:school_class][:title]
        @new_class.room_number = params[:school_class][:room_number]
        @new_class.save 
        redirect_to school_class_path(@new_class)
    end 

    def edit 
        @school_class = SchoolClass.find(params[:id])
    end 
    
    def update 
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end 
end
