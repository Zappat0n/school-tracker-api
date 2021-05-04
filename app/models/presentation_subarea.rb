class PresentationSubarea < ApplicationRecord
  belongs_to :presentation_area
  has_many :presentations

  validates :name, presence: true
  validates :nombre, presence: true
  validates :presentation_area_id, presence: true

  scope :for_area, ->(area_id) { where(presentation_area_id: area_id) }
end
