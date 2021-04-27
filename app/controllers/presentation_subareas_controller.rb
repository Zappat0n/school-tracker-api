class PresentationSubareasController < ApplicationController
  # GET /presentation_subareas
  def index
    @presentation_subareas = PresentationSubarea.all
    render json: @presentation_subareas
  end

  # GET /presentation_subareas/1
  def show
    @presentations = Presentation.where(presentation_subarea_id: params[:id])
    render json: @presentations
  end
end
