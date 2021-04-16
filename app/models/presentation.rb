class Presentation < ApplicationRecord
  belongs_to :presentation_subarea
  has_many :events
end
