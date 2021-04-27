class StudentsController < ApplicationController
  # GET /students
  def index
    @students = Student.all
    render json: @students
  end

  # GET /students/:id
  def show
    @student = Student.find(params[:id])
    @events = Event.joins(:presentation).select('events.id, events.date, presentations.name, events.score').order(:date)
      .where('student_id=?', params[:id])
    render json: @events
  end
end
