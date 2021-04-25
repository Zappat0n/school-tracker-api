require 'rails_helper'

RSpec.describe PresentationArea, type: :model do
  it 'is valid with valid attributes' do
    expect(PresentationArea.new(name: 'Math', nombre: 'Matemáticas')).to be_valid
  end
  it 'is not valid without a name' do
    expect(PresentationArea.new(nombre: 'Matemáticas')).to_not be_valid
  end
  it 'is not valid without nombre' do
    expect(PresentationArea.new(name: 'Math')).to_not be_valid
  end
end
