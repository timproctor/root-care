require 'rails_helper'

RSpec.describe Driver, type: :model do
  it "has a name" do
    dirt = Dirt.create(dirt_attributes(name: ''))

    dirt.valid?

    expect(dirt.errors[:name].any?).to eq(true)
  end
end
