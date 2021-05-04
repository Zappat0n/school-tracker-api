module PresentationSubareasHelper
  def presentation_subarea_params
    params.permit(:id, :name, :nombre, :presentation_area_id)
  end
end
