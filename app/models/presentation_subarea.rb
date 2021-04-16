class PresentationSubarea < ApplicationRecord
  belongs_to :presentation_area
  has_many :presentations
end
