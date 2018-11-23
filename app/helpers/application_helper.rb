module ApplicationHelper
  def full_title(page_name = "")
    base_title = "Ruby on Rails Tutorial Sample App"
    page_name.empty? ? base_title : "#{page_name} | #{base_title}"
  end
end
