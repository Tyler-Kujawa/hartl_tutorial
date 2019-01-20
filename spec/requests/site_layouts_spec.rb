# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'SiteLayouts', type: :request do
  describe 'GET /site_layouts' do
    subject { get root_path }

    it 'renders the home template for the root route' do
      expect(subject).to render_template(:home)
    end
  end
end
