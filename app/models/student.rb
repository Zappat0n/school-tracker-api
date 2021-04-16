class Student < ApplicationRecord
  belongs_to :classroom
  has_many :events
end
