require "rails_helper"

# Make sure that the visitor can see the projects on the homepage
RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
end
