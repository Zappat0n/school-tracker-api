require 'rails_helper'

RSpec.describe PresentationSubarea, type: :model do
  describe 'Event model' do
    let(:presentation_area) { PresentationArea.create(name: 'Math', nombre: 'Matemáticas') }
    let(:presentation_subarea) do
      PresentationSubarea.create(name: 'Addition', nombre: 'Sumar', presentation_area: presentation_area)
    end
    it 'is valid with valid attributes' do
      expect(PresentationSubarea.create(name: 'Addition', nombre: 'Sumar',
                                        presentation_area: presentation_area)).to be_valid
    end

    it 'is not valid without name' do
      expect(PresentationSubarea.create(nombre: 'Sumar', presentation_area: presentation_area)).to_not be_valid
    end
    it 'is not valid without nombre' do
      expect(PresentationSubarea.create(name: 'Addition', presentation_area: presentation_area)).to_not be_valid
    end
    it 'is not valid without presentation_area' do
      expect(PresentationSubarea.create(name: 'Addition', nombre: 'Sumar')).to_not be_valid
    end
  end
end
