class PresentationSubareasController < ApplicationController
  # GET /presentation_subareas
  def index
    @presentation_subareas = PresentationSubarea.all
    render json: @presentation_subareas
  end

  # GET /presentation_areas/1
  def show
    @presentation_subarea = PresentationSubarea.find(params[:id])
    @presentations = Presentation.where(presentation_subarea: @presentation_subarea)
    render json: @presentations
  end
end
