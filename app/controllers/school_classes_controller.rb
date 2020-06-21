class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def show
    get_school_class
  end

  def edit
    get_school_class
  end
  
  def create
    school_class = SchoolClass.new
    school_class.assign_attributes(school_class_params)
    school_class.save
    redirect_to school_class_path(school_class)
  end
  
  def update
    get_school_class
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end
  
  private
  
  def get_school_class
    @school_class = SchoolClass.find(params[:id])
  end
  
  def school_class_params
    params.require(:school_class).permit(:room_number, :title)
  end
end
