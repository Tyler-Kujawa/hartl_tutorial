# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'General Routing', type: :routing do
  it 'routes root path to static_content#home' do
    expect(get('/')).to route_to(controller: 'static_pages', action: 'home')
  end

  it 'routes about_path to static_content#about' do
    expect(get: about_path).to route_to(controller: 'static_pages', action: 'about')
  end

  it 'routes about_path to static_content#help' do
    expect(get: help_path).to route_to(controller: 'static_pages', action: 'help')
  end

  it 'routes about_path to static_content#contact' do
    expect(get: contact_path).to route_to(controller: 'static_pages', action: 'contact')
  end
end
