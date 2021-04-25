class Event < ApplicationRecord
  belongs_to :student
  belongs_to :presentation

  validates :date, presence: true
  validates :student, presence: true
  validates :presentation, presence: true
  validates :score, presence: true, format: { with: /[0..3]/ }
end
