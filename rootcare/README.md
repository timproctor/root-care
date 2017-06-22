# Loading Solution in localhost

# TDD first
Sometimes as programmers, we like to add constraints to a challenge. For example,
this particular challenge, I wanted to construct the solution using as pure a TDD
methodology as possible. Why? I think we love challenge because we love to grow
by rising to that challenge.

As a result, I found that I could not code as quickly as I was expecting and that
put me out of my comfort zone. There are 22 specs and that seems reasonable
for something like this project. I was able to persevere and I am excited to share
my solution.

# Testing input datafile as seed data
I used 8 drivers for my mock data. I gave the drivers all of the different scenarios
that I wanted to handle like trips under 5 mph, trips over 100 mph, drivers with no
trips, and strange impossible scenarios like a driver that went a negative speed.

The spec for the seeds file expects a certain amount of drivers and expects
the correct amount of trips for one driver. Ultimately, this is brittle spec since
the data input could change and in that case, the driver and trip counts need to
manually be changed.

# Models
There are two models. The `Driver` model can have many 'Dirts', which is a play on
the formula for distance, `d = rate * time`, I added a vowel between the `d` and `r`
to get the word `Dirt`. I also refer to the `Dirt` model as a Trip. I probably
should have just called it a Trip but to me a trip means you go somewhere, stay
and then come back. I think there could be a Trip model in the future that
might incorporate destinations, so for now this solution only needs the `Dirt`
information.

The `Dirt` has methods that calculate change in time and rate. The `Driver` has
methods that calculate total miles a driver drives and their average speeds.

# View
I use the Dirt Index template. Nothing special about UI/UX since it is just a table
and I didn't add any UI/UX. I wanted to stick to as blank slate a look as possible.
I imagine showing the index as a Proof Of Concept perhaps in which the client
would add a bunch of front-end design features at that point.

# Controllers
The Driver controller handles creating new drivers, and the index is based on
filtering the drivers by those that have 0 miles. I wanted to make sure that if a
driver has speeds under 5 or over 100 or no miles that they are still displayed
as having `0 miles`.

The Dirt controller gets it's index action by picking out all the eligible trips
then that info becomes a driver-trips hash and then is passed to the index template.

My goal was to keep the controllers as lean as I could. The Application controllers
contains the bulk of the filtering and parsing methods to display only the trip info
that should be displayed. When a driver has trip data thrown out, I still
wanted to make sure the Driver shows in the Index in alphabetical order with
this little method:

```Ruby
  def filter_by_0_distance
    filter_for_0_distance.sort_by{|driver| driver.name}
  end
```
