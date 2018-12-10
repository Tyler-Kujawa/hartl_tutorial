require 'rails_helper'

describe 'the header' do
  before :each do
    visit root_path
  end

  it 'displays the correct links' do
    expect(page).to have_content('Home')
    expect(page).to have_content('Help')
    expect(page).to have_content('Contact')
    expect(page).to have_content('Log in')
  end

  describe 'routes the user to the correct page' do
    it 'goes to help' do
      click_link 'Help'
      expect(page).to have_current_path help_path
    end

    it 'goes to contact' do
      click_link 'Contact', match: :first
      expect(page).to have_current_path contact_path
    end

    xit 'goes to Log in' do
      click_link 'Log in'
      expect(page).to have_current_path root_path 
    end
  end
end
