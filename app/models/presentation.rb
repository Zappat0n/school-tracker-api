class Presentation < ApplicationRecord
  belongs_to :presentation_subarea
  has_many :events

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
  validates :nombre, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
  validates :presentation_subarea_id, presence: true
  validates :year, presence: true
end
