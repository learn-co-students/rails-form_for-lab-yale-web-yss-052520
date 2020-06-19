class StudentsController < ApplicationController
  def new()
    @student = Student.new
  end

  def create()
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save

    redirect_to student_path(@student)
  end

  def show()
    @student = find_student()
  end

  def edit()
    @student = find_student()
  end

  def update()
    @student = find_student()
    @student.update(student_params([:first_name, :last_name]))

    redirect_to student_path(@student)
  end

  private

  def find_student()
    Student.find(params[:id])
  end

  def student_params(*args)
    params.require(:student).permit(*args)
  end

end
