require "rails_helper"

RSpec.describe "static_pages/about.html.erb", type: :view do
  it "displays the correct title" do
    render
    rendered.should have_selector("h1", text: "About us")
  end
end
