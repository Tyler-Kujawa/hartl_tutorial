require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new name: 'coolUser', email: 'coolUser@cool.com',
               password: 'pwd', password_confirmation: 'pwd' }
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

      it 'is in a valid format' do
        valid_emails = %w[test@test.com USER@google.com a.user@a.user.com]
        valid_emails.each do |email|
          user.email = email
          is_expected.to be(true)
        end
      end

      it 'is in an invalid format' do
        invalid_emails = %w[test@test,com cool_user@foo.org foo@bar+bar.com]
        invalid_emails.each do |email|
          user.email = email
          is_expected.to be(false)
        end
      end

      it 'ensures email is unique' do
        clone = user.dup
        clone.email.upcase!
        user.save
        expect(clone.valid?).to be(false)
      end

      it 'downcases email before saving' do
        user.email = 'TEST@gmail.com'
        user.save
        expect(user.email).to eq('test@gmail.com')
      end
    end

    describe 'password' do
      let(:bad_pass_user) {User.create(name: 'coolUser', email: 'coolUser@cool.com')}

      it 'must be present' do
        expect(bad_pass_user.valid?).to be(false)
      end

      it 'must be not be blank' do
        bad_pass_user.password = " " * 6
        bad_pass_user.password_confirmation = " " * 6
        expect(bad_pass_user.valid?).to be(false)
      end
    end
  end
end
