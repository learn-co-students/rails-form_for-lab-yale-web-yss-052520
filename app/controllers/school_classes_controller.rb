class SchoolClassesController < ApplicationController
    
    before_action :find_object, only: [:show, :edit, :update]
    
    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(strong_params)
        redirect_to @school_class
    end

    def show
    end

    def edit
    end

    def update
        @school_class = SchoolClass.update(strong_params)
        redirect_to @school_class
    end

    private

    def find_object
        @school_class = SchoolClass.find(params[:id])
    end

    def strong_params
        params.require(:school_class).permit(:title, :room_number)
    end

end