module StudentsHelper
  def student_params
    params.permit(:id, :name, :birth_date, :classroom_id)
  end
end
