class Presentation < ApplicationRecord
  belongs_to :presentation_subarea
  has_many :events

  validates :name, presence: true
  validates :nombre, presence: true
  validates :presentation_subarea_id, presence: true
  validates :year, presence: true

  scope :for_subarea, ->(subarea_id) { where(presentation_subarea_id: subarea_id) }
  scope :between, ->(year1, year2) { where('year > ? AND year <= ?', year1, year2) }
end
