require "rails_helper"

RSpec.describe "General Routing", type: :routing do
  it "routes root path to static_content#home" do
    expect(get("/")).to route_to(controller: "static_pages", action: "home")
  end
end
