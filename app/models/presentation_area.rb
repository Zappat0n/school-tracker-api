class PresentationArea < ApplicationRecord
  has_many :presentation_subareas

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :nombre, presence: true, uniqueness: { case_sensitive: false }
end
