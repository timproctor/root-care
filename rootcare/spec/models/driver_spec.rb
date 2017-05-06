require 'rails_helper'

RSpec.describe Driver, type: :model do

  it "has a name" do
    driver = Driver.create(driver_attributes(name: ''))

    driver.valid?

    expect(driver.errors[:name].any?).to eq(true)
  end

  it "it has many trips" do
    user = User.new(user_attributes)
    movie1 = Movie.new(movie_attributes(title: "Iron Man"))
    movie2 = Movie.new(movie_attributes(title: "Superman"))

    review1 = movie1.reviews.new(stars: 5, comment: "Awesome!", user_id: user.id)
    review1.user = user
    review1.save!

    review2 = movie2.reviews.new(stars: 1, comment: "what? sucked.")
    review2.user = user
    review2.save!

    expect(user.reviews).to include(review1)
    expect(user.reviews).to include(review2)
  end
end
