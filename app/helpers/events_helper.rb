module EventsHelper
  def build_events_for_classroom(classroom_id)
    years = get_years(classroom_id)
    {
      students: Student.for_classroom(classroom_id),
      presentations: Presentation.between(years[0], years[1]),
      events: Event.for_classroom_between(classroom_id, years[0], years[1])
    }
  end

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
    params.permit(:id, :date, :student_id, :presentation_id, :score)
  end
end
