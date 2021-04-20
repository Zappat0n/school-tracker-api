module EventsHelper
  def get_years(classroom)
    case classroom
    when '1'
      [0, 3]
    when '2', '3'
      [3, 6]
    when '4'
      [6, 9]
    end
  end

  def event_params
    params.require(:event).permit(:date, :student_id, :presentation_id, :score)
  end
end
