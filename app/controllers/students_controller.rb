class StudentsController < ApplicationController
  # GET /students
  def index
    @students = Student.all
    render json: @students
  end
end
