require "rails_helper"

RSpec.feature "Drivers listed", :type => :feature do
  before do
    seed_data
  end

  scenario "A list of driver names" do

    visit "dirts#index"

    expect(page).to have_text("Rex")
  end

  scenario "Driver's total miles" do
    visit "dirts#index"

    expect(page).to have_text("55 Miles")
  end

  scenario "Driver's average speed for all his trips is displayed" do
    visit "dirts#index"

    expect(page).to have_text("32 MPH")
  end

  


end
