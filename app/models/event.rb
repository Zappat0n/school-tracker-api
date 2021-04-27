class Event < ApplicationRecord
  belongs_to :student
  belongs_to :presentation

  validates :date, presence: true
  validates :student, presence: true
  validates :presentation, presence: true
  validates :score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 4 }

  scope :for_classroom_between, lambda { |classroom_id, start_year, end_year|
                                  joins(:student).joins(:presentation).where(
                                    'students.classroom_id=? AND presentations.year>? AND presentations.year<=?',
                                    classroom_id, start_year, end_year
                                  )
                                }

  scope :for_student_sorted, lambda { |student_id|
    joins(:presentation).select('events.id, events.date, presentations.name, events.score').order(:date)
      .where(student_id: student_id)
  }
end
