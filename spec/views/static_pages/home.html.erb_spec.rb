require 'rails_helper'

RSpec.describe "static_pages/home.html.erb", type: :view do
  it "displays the right title" do
    render
    rendered.should have_selector("h1", text: "Home page") 
  end
end