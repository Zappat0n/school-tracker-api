module ClassroomsHelper
  def set_classroom
    @classroom = Classroom.find(classroom_params[:id])
  end

  def classroom_params
    params.require(:classroom).permit(:name)
  end
end
