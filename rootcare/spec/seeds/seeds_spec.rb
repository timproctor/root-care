require "rails_helper"

describe "seeds" do
  before do
    seed_data
  end

  it "creates a driver given driver command" do


    expect(driver.name).to eq("rex")
  end

end
