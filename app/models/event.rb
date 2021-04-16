class Event < ApplicationRecord
  belongs_to :student
  belongs_to :presentation
end
