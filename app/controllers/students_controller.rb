class StudentsController < ApplicationController

  def index
    if params[:name]
      find_student = Student.where(first_name: params[:name]).or(Student.where(last_name: params[:name]))
      render json: find_student
    else
      students = Student.all
      render json: students
    end

  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
end
