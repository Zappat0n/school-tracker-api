class PresentationArea < ApplicationRecord
  has_many :presentation_subareas

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 64 }
  validates :nombre, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 64 }
end
