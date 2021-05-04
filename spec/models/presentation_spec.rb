require 'rails_helper'

RSpec.describe Presentation, type: :model do
  describe 'Presentation model' do
    let(:presentation_area) { PresentationArea.create(name: 'Math', nombre: 'Matemáticas') }
    let(:presentation_subarea) do
      PresentationSubarea.create(name: 'Addition', nombre: 'Sumar', presentation_area: presentation_area)
    end
    let(:presentation) do
      Presentation.create(name: 'Add numbers', nombre: 'Cocinar', presentation_subarea: presentation_subarea, year: 4)
    end
    it 'is valid with valid attributes' do
      expect(Presentation.create(name: 'Add numbers', nombre: 'Cocinar', presentation_subarea: presentation_subarea,
                                 year: 4)).to be_valid
    end

    it 'is not valid without name' do
      expect(Presentation.create(nombre: 'Cocinar', presentation_subarea: presentation_subarea,
                                 year: 4)).to_not be_valid
    end
    it 'is not valid without nombre' do
      expect(Presentation.create(name: 'Add numbers', presentation_subarea: presentation_subarea,
                                 year: 4)).to_not be_valid
    end
    it 'is not valid without presentation_subarea' do
      expect(Presentation.create(name: 'Add numbers', nombre: 'Cocinar', year: 4)).to_not be_valid
    end
    it 'is not valid without year' do
      expect(Presentation.create(name: 'Add numbers', nombre: 'Cocinar',
                                 presentation_subarea: presentation_subarea)).to_not be_valid
    end
  end
end
