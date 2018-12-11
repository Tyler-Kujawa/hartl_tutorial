require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new name: 'coolUser', email: 'coolUser@cool.com'}

  describe 'validations' do
    it 'is a valid user' do
      expect(user.valid?).to be(true)
    end

    describe 'name' do
      it 'is not present' do
        user.name = nil
        expect(user.valid?).to be(false)
      end

      it 'is too long' do
        user.name = "#{'a' * 52}"
        expect(user.valid?).to be(false)
      end
    end

    it 'email is not present' do
      user.email = nil
      expect(user.valid?).to be(false)
    end

    xit 'email is not formatted correctly' do
      user.email = 'this is an email'
      expect(user.valid?).to be(false)
    end
  end
end
