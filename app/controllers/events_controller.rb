require 'json'

class EventsController < ApplicationController
  include EventsHelper

  # GET /events/:id
  def show
    result = build_events_for_classroom(event_params[:id])
    render json: result.to_json
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    if @event.save
      render json: @event, status: :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PUT /events
  def update
    event = Event.find(event_params[:id])
    p @event
    if event.update(event_params)
      render json: event
    else
      render json: event.errors, status: :unprocessable_entity
    end
  end
end
