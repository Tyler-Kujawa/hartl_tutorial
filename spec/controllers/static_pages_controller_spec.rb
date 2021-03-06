require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "GET #home" do
    before { get :home }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "has the right title" do
      expect(response.body).to have_css("title", text: base_title, visible: false)
    end
  end

  describe "GET #help" do
    before { get :help }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "has the right title" do
      expect(response.body).to have_selector("title", text: "Help | #{base_title}", visible: false)
    end
  end

  describe "get #about" do
    before { get :about }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "has the right title" do
      expect(response.body).to have_selector("title", text: "About | #{base_title}", visible: false)
    end
  end

  describe "get #contact" do
    before { get :contact }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "has the right title" do
      expect(response.body).to have_selector("title", text: "Contact | #{base_title}", visible: false)
    end
  end
end
