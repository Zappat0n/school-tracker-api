require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User model' do
    it 'is valid with valid attributes' do
      expect(User.create(username: 'John', password: '123456')).to be_valid
    end
    it 'is not valid without username' do
      expect(User.create(password: '123456')).to_not be_valid
    end
    it 'is not valid without password' do
      expect(User.create(password: '123456')).to_not be_valid
    end
    it 'is not valid with short password' do
      expect(User.create(username: 'John', password: '123')).to_not be_valid
    end
  end
end
