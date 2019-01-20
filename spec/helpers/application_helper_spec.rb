# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  before(:each) do
    @test_obj = Object.new
    @test_obj.extend(ApplicationHelper)
  end

  context 'No Param' do
    let(:title) { @test_obj.full_title }
    it 'prints the right page title' do
      expect(title).to eq('Ruby on Rails Tutorial Sample App')
    end
  end

  context 'page title given' do
    let(:page_name) { 'TheFirst' }
    let(:title) { @test_obj.full_title(page_name) }

    it 'prints the right page title' do
      expect(title).to eq('TheFirst | Ruby on Rails Tutorial Sample App')
    end
  end
end
