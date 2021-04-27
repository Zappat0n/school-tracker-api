class StudentsController < ApplicationController
  # GET /students
  def index
    @students = Student.all
    render json: @students
  end

  # GET /students/:id
  def show
    @events = Event.for_student_sorted(params[:id])
    render json: @events
  end
end
