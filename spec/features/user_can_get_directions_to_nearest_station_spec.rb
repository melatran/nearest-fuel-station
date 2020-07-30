require 'rails_helper'

describe 'As a user I can find a station' do
  it 'by selecting start location' do
    visit root_path
    select "Turing", from: "location"
    #location from our form
    click_on "Find Nearest Station"

    expect(current_path).to eq(search_path)

    within ".fuel-station" do
      expect(page).to have_css('.name')
      name = find(".name").value
      expect(name).not_to be_empty

      expect(page).to have_css('.address')
      address = find(".address").value
      expect(address).not_to be_empty

      expect(page).to have_css('.fuel-type')
      fuel-type = find(".fuel-type").value
      expect(fuel-type).not_to be_empty

      expect(page).to have_css('.access-time')
      access-time = find(".access-time").value
      expect(access-time).not_to be_empty

      expect(page).to have_css('.distance')
      distance = find(".distance").value
      expect(distance).not_to be_empty

      expect(page).to have_css('.travel-time')
      travel-time = find(".travel-time").value
      expect(travel-time).not_to be_empty

      expect(page).to have_css('.directions')
      directions = find(".directions").value
      expect(directions).not_to be_empty
    end
  end
end


# As a user
# When I visit "/"
# And I select "Turing" form the start location drop down (Note: Use the existing search form)
# And I click "Find Nearest Station"
# Then I should be on page "/search"
# Then I should see the closest electric fuel station to me.
# For that station I should see
# - Name
# - Address
# - Fuel Type
# - Access Times
# I should also see:
# - the distance of the nearest station (should be 0.1 miles)
# - the travel time from Turing to that fuel station (should be 1 min)
# - The direction instructions to get to that fuel station
#   "Turn left onto Lawrence St Destination will be on the left"
