require "rails_helper"

RSpec.feature "Drivers listed", :type => :feature do
  before do
    seed_data
  end

  xscenario "A list of driver names" do

    visit "dirts#index"

    expect(page).to have_text("Rex")
  end

  xscenario "Driver's total miles" do
    visit "dirts#index"

    expect(page).to have_text("55 Miles")
  end

  xscenario "Driver's average speed for all his trips is displayed" do
    visit "dirts#index"

    expect(page).to have_text("32 MPH")
  end

  xscenario "Don't display trips less than 5mph" do
    visit "dirts#index"

    expect(page).not_to have_text("Tim")
  end

  xscenario "Don't display trips more than 100 mph" do
    visit "dirts#index"

    expect(page).not_to have_text("305 Miles")
  end

  scenario "Sorted by driver with most miles driven" do
    visit "dirts#index"

    expect(page).to have_text("td:first-child", text: "Emily")
  end

  xscenario "Miles are rounded to the nearest integer" do
    visit "dirts#index"

    #todo make a within some kind of css have a text, make an order
    expect(page).not_to have_text("305 Miles")
  end

  xscenario "Speed is rouned to the nearest integer" do
    visit "dirts#index"

    #todo make a within some kind of css have a text, make an order
    expect(page).not_to have_text("305 Miles")
  end

end
