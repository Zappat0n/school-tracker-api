module PresentationAreasHelper
  def presentation_area_params
    params.permit(:id, :name, :nombre)
  end
end
