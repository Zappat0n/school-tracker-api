class Classroom < ApplicationRecord
  has_many :students

  validates :name, presence: true, length: { maximum: 32 }
end
