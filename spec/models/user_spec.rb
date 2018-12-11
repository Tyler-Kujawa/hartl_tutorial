require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new name: 'coolUser', email: 'coolUser@cool.com' }
  subject { user.valid? }

  describe 'validations' do
    it { is_expected.to be true }

    describe 'name' do
      it 'is not present' do
        user.name = nil
        is_expected.to be(false)
      end

      it 'is too long' do
        user.name = "#{'a' * 52}"
        is_expected.to be(false)
      end
    end

    describe 'email' do
      it 'is not present' do
        user.email = nil
        is_expected.to be(false)
      end

      it 'it is too long' do
        user.email = "#{'a' * 260}@gmail.com"
        is_expected.to be(false)
      end
    end
  end
end
