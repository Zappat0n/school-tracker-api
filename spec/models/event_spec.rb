require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'Event model' do
    let(:classroom) { Classroom.create(name: 'First') }
    let(:student) { Student.create(name: 'John', birth_date: '2016-01-01', classroom: @classroom) }
    let(:presentation_area) { PresentationArea.create(name: 'Math', nombre: 'Matemáticas') }
    let(:presentation_subarea) do
      PresentationSubarea.create(name: 'Addition', nombre: 'Sumar', presentation_area: @presentation_area)
    end
    let(:presentation) do
      Presentation.create(name: 'Add numbers', nombre: 'Cocinar', presentation_subarea: @presentation_subarea, year: 4)
    end
    it 'is valid with valid attributes' do
      expect(Event.new(date: DateTime.now, student: student, presentation: presentation, score: 0)).to be_valid
    end

    it 'is not valid without date' do
      expect(Event.new(student: student, presentation: presentation, score: 0)).to_not be_valid
    end
    it 'is not valid without student' do
      expect(Event.new(date: DateTime.now, presentation: presentation, score: 0)).to_not be_valid
    end
    it 'is not valid without presentation' do
      expect(Event.new(date: DateTime.now, student: student, score: 0)).to_not be_valid
    end
    it 'is not valid without score' do
      expect(Event.new(date: DateTime.now, student: student, presentation: presentation)).to_not be_valid
    end
    it 'is not valid with wrong score' do
      expect(Event.new(date: DateTime.now, student: student, presentation: presentation, score: 5)).to_not be_valid
    end
  end
end
