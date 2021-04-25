class Student < ApplicationRecord
  belongs_to :classroom
  has_many :events

  validates :name, presence: true, length: { maximum: 50 }
  validates :birth_date, presence: true
  validates :classroom, presence: true
end
