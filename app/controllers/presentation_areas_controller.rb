class PresentationAreasController < ApplicationController
  include PresentationAreasHelper

  # GET /presentation_areas
  def index
    @presentation_areas = PresentationArea.all
    render json: @presentation_areas
  end

  # GET /presentation_areas/1
  def show
    @presentation_subareas = PresentationSubarea.for_area(presentation_area_params[:id])
    render json: @presentation_subareas
  end
end
