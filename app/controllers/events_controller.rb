require 'json'

class EventsController < ApplicationController
  include EventsHelper

  # GET /classrooms/:id/scores
  def index
    years = get_years(params[:id])
    students = Student.where('classroom_id=?', params[:id])
    presentations = Presentation.where('year > ? AND year <= ?', years[0], years[1])
    events = Event.joins(:student).joins(:presentation).where(
      'students.classroom_id=? AND presentations.year>? AND presentations.year<=?',
      params[:id], years[0], years[1]
    )
    result = { students: students, presentations: presentations, events: events }
    render json: result.to_json
  end

  # GET /students/:id/scores
  def show
    @student = Student.find(params[:id])
    @events = Event.where('student=?', params[:id]).includes(:presentation)
    render json: @events
  end
end
