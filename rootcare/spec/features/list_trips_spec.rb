require "rails_helper"

RSpec.feature "Drivers listed", :type => :feature do
  before do
    seed_data
  end

  scenario "A list of drivers" do
    visit root_path


    expect(page).to have_text("Rex.")

  end
end
