class ClassroomsController < ApplicationController
  include ClassroomsHelper
  include StudentsHelper

  # GET /classrooms
  def index
    @classrooms = Classroom.all
    render json: @classrooms
  end

  # GET /classrooms/1
  def show
    @students = Student.where(@classroom)
    render json: @students
  end

  # POST /classrooms
  def create
    @classroom = Classroom.new(classroom_params)

    if @classroom.save
      render json: @classroom, status: :created, location: @classroom
    else
      render json: @classroom.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /classrooms/1
  def update
    if @classroom.update(classroom_params)
      render json: @classroom
    else
      render json: @classroom.errors, status: :unprocessable_entity
    end
  end

  # DELETE /classrooms/1
  def destroy
    @classroom.destroy
  end
end
