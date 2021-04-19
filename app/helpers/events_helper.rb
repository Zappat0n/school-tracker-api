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
end
