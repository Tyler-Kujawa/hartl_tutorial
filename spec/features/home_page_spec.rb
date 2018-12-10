require 'rails_helper'

describe 'jumbotron' do
  it 'has a working signup link' do
    visit root_path 
    click_link 'Sign up now!'
    expect(page).to have_current_path signup_path
  end
end
