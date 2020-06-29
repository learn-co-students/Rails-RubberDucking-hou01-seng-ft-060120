class StudentsController < ApplicationController
before_action :find_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
    
  end

  def new
    @student = Student.new
  end

  def create 
    @student = Student.new(student_params)
      if @student.valid?
        @student.save
        redirect_to students_path
      else
        redirect_to new_student_path
      end
  end

  def update
    @student.update(student_params)
    redirect_to @student
  end

  def edit

  end
     


  private

  def student_params
    params.require(:student).permit(:name, :mod)
  end

  def find_student
    @student = Student.find(params[:id])
  end

end
