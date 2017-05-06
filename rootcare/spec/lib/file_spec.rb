require "rails_helper"

RSpec.describe "file" do
  before do
    seed_data
  end
  it "reads mock data file" do
    expect(seed_data[0][1]).to eq("rex")
  end
end
