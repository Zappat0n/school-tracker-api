require 'rails_helper'

RSpec.describe Classroom, type: :model do
  it 'is valid with valid attributes' do
    expect(Classroom.new(name: 'First class')).to be_valid
  end
  it 'is not valid without a name' do
    expect(Classroom.new).to_not be_valid
  end
  it 'is not valid with big  name' do
    expect(Classroom.new(name: '123456789123456789')).to_not be_valid
  end
end
