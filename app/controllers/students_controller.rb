class StudentsController < ApplicationController
  include StudentsHelper
  # GET /students
  def index
    @students = Student.all
    render json: @students
  end

  # GET /students/:id
  def show
    @events = Event.for_student_sorted(student_params[:id])
    render json: @events
  end
end
