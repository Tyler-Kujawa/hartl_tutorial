# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'users/new.html.erb', type: :view do
  it 'displays the right title' do
    render
    rendered.should have_selector('h1', text: 'Sign up')
    rendered.should have_selector('p', text: 'This will be the signup page for new users.')
  end
end
