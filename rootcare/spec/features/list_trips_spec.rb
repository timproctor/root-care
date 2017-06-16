require "rails_helper"

RSpec.feature "Drivers listed", :type => :feature do
  before do
    seed_data
  end

  scenario "A list of driver names" do
    visit "dirts#index"
    within "tr:nth-child(1) th:nth-child(1)" do
      expect(page).to have_text("Driver's Name")
    end
  end

  scenario "Driver's total miles" do
    visit "dirts#index"
    within "tr:nth-child(1) th:nth-child(2)" do
      expect(page).to have_text("Total Distance")
    end
  end

  scenario "Driver's average speed for all his trips is displayed" do
    visit "dirts#index"

    within "tr:nth-child(1) th:nth-child(3)" do
      expect(page).to have_text("Average Speed")
    end
  end

  scenario "Don't display trips less than 5mph" do
    visit "dirts#index"

    expect(page).not_to have_text("Tim")
  end

  scenario "Don't display trips more than 100 mph" do
    visit "dirts#index"

    expect(page).not_to have_text("305 Miles")
  end

  scenario "Sorted by driver with most miles driven" do
    visit "dirts#index"

    within "tr:nth-child(2) td:nth-child(1)" do
      expect(page).to have_text("Rex")
    end
  end

  scenario "Miles are rounded to the nearest integer" do
    visit "dirts#index"

    within "tr:nth-child(2) td:nth-child(2)" do
      expect(page).to have_text("55")
    end
  end

  scenario "Speed is rouned to the nearest integer" do
    visit "dirts#index"

    within "tr:nth-child(2) td:nth-child(3)" do
      expect(page).to have_text("32")
    end
  end

  scenario "Drivers without dirts are given 0 miles under total distance" do
    visit "dirts#index"

    within "tr:nth-child(6) td:nth-child(1)" do
      expect(page).to have_text("Mark")
    end
  end


end
