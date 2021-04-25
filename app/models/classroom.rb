class Classroom < ApplicationRecord
  has_many :students

  validates :name, presence: true, length: { maximum: 16 }
end
