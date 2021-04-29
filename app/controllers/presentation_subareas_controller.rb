class PresentationSubareasController < ApplicationController
  include PresentationSubareasHelper

  # GET /presentation_subareas
  def index
    @presentation_subareas = PresentationSubarea.all
    render json: @presentation_subareas
  end

  # GET /presentation_subareas/1
  def show
    @presentations = Presentation.for_subarea(presentation_subarea_params[:id])
    render json: @presentations
  end
end
