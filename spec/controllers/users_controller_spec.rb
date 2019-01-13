require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "GET #new" do
    before(:each) { get :new }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "has the right title" do
      expect(response.body).to have_selector("title", text: "Sign up | #{base_title}", visible: false)
    end
  end

  describe "GET #show" do
    before(:each) { get :show }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end	

end
