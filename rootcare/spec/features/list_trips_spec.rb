require "rails_helper"

RSpec.feature "Drivers listed", :type => :feature do
  before do
    seed_data
  end

  scenario "A list of driver names" do
    visit "dirts#index"
    within(:css, "//table/tr[1]/th[1]") do
      expect(page).to have_text("Driver's Name")
    end
  end

  scenario "Driver's total miles" do
    visit "dirts#index"
    within(:css, "//table/tr[1]/th[2]") do
      expect(page).to have_text("Total Distance")
    end
  end

  scenario "Driver's average speed for all his trips is displayed" do
    visit "dirts#index"

    within(:css, "//table/tr[1]/th[3]") do
      expect(page).to have_text("Average Speed")
    end
  end

  scenario "Don't display trips less than 5mph" do
    visit "dirts#index"

    within(:css, "//table/tr[8]/td[2]") do
      expect(page).to have_text("0 miles")
    end
  end

  scenario "Don't display trips more than 100 mph" do
    visit "dirts#index"

    within(:css, "//table/tr[6]/td[2]") do
      expect(page).to have_text("0 miles")
    end
  end

  scenario "Sorted by driver with most miles driven" do
    visit "dirts#index"

    within(:css, "//table/tr[2]/td[1]") do
      expect(page).to have_text("Rex")
    end
  end

  scenario "Miles are rounded to the nearest integer" do
    visit "dirts#index"

    within(:css, "//table/tr[2]/td[2]") do
      expect(page).to have_text("55 miles")
    end
  end

  scenario "Speed is rouned to the nearest integer" do
    visit "dirts#index"

    within(:css, "//table/tr[2]/td[3]") do
      expect(page).to have_text("32 miles")
    end
  end

  scenario "Drivers without dirts are given 0 miles under total distance" do
    visit "dirts#index"

    within(:css, "//table/tr[6]/td[2]") do
      expect(page).to have_text("0 miles")
    end
  end
end
