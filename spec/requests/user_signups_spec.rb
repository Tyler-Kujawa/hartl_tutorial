# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'UserSignup', type: :request do
  describe 'Signing up a new user' do
    before(:each) { get signup_path }

    describe 'invalid input' do
      it 'submits a blank page' do
        before_count = User.count
        post users_path params: { user: { name: '', email: '', password: '', password_confirmation: '' } }
        expect(before_count).to eq User.count
        expect(response).to render_template(:new)
      end

      it 'submits mismatched passwords' do
        before_count = User.count
        post users_path params: { user: { name: '', email: '', password: 'foo', password_confirmation: 'bar' } }
        expect(before_count).to eq User.count
        expect(response).to render_template(:new)
      end
    end

    describe 'valid input' do
      it 'creates a new user' do
        before_count = User.count
        post users_path params: { user: { name: 'Cool User', email: 'acool@user.com', password: 'foobarfoobar', password_confirmation: 'foobarfoobar' } }
        expect(before_count + 1).to eq User.count
        expect(response).to render_template(:show)
      end
    end
  end
end
