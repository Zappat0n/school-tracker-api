class PresentationSubarea < ApplicationRecord
  belongs_to :presentation_area
  has_many :presentations

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :nombre, presence: true, uniqueness: { case_sensitive: false }
  validates :presentation_area_id, presence: true
end
