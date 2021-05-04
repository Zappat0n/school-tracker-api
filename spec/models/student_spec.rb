require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'Student model' do
    let(:classroom) { Classroom.create(name: 'First') }
    it 'is valid with valid attributes' do
      expect(Student.new(name: 'John', birth_date: '2016-01-01', classroom: classroom)).to be_valid
    end
    it 'is not valid without birth_date' do
      expect(Student.new(name: 'John', classroom: classroom)).to_not be_valid
    end
    it 'is not valid without name' do
      expect(Student.new(birth_date: '2016-01-01', classroom: classroom)).to_not be_valid
    end
    it 'is not valid without classroom' do
      expect(Student.new(name: 'John', birth_date: '2016-01-01')).to_not be_valid
    end
    it 'is not valid with long name' do
      expect(Student.new(name: '1234567891234567891234567891234567891234564574577891',
                         birth_date: '2016-01-01', classroom: classroom)).to_not be_valid
    end
  end
end
