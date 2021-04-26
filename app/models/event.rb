class Event < ApplicationRecord
  belongs_to :student
  belongs_to :presentation

  validates :date, presence: true
  validates :student, presence: true
  validates :presentation, presence: true
  validates :score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 4 }
end
