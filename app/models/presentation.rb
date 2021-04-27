class Presentation < ApplicationRecord
  belongs_to :presentation_subarea
  has_many :events

  validates :name, presence: true
  validates :nombre, presence: true
  validates :presentation_subarea_id, presence: true
  validates :year, presence: true

  scope :presentations_per_subarea, lambda {
                                      joins(:groups_presentations).where('groups_presentations.group_id IS NOT NULL')
                                    }
end
