class PresentationAreasController < ApplicationController
  # GET /presentation_areas
  def index
    @presentation_areas = PresentationArea.all
    render json: @presentation_areas
  end

  # GET /presentation_areas/1
  def show
    @presentation_area = PresentationArea.find(params[:id])
    @presentation_subareas = PresentationSubarea.where(presentation_area: @presentation_area)
    render json: @presentation_subareas
  end
end
