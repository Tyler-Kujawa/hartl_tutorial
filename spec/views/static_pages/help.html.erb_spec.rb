# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'static_pages/help.html.erb', type: :view do
  it 'displays the correct header' do
    render
    rendered.should have_selector('h1', text: 'Help', exact: true)
  end
end
