require 'rails_helper'

describe NRELService do
  it '#get_nearest_station' do
    service = NRELService.new

    results = service.get_nearest_station('1331 17th St Denver CO 80202')
    expect(results[:fuel_stations]).to be_an(Array)
    # expect(results).to have_key(:fuel_stations)
    # expect(results[:fuel_stations].length).to eq(1)
    # expect(results[:fuel_stations][0]).to have_key(:distance)
    # expect(results[:fuel_stations][0]).to have_key(:station_name)
    # expect(results[:fuel_stations][0]).to have_key(:fuel_type_code)
    # expect(results[:fuel_stations][0]).to have_key(:latitude)
    # expect(results[:fuel_stations][0]).to have_key(:longitude)
    # expect(results[:fuel_stations][0]).to have_key(:city)
    # expect(results[:fuel_stations][0]).to have_key(:state)
    # expect(results[:fuel_stations][0]).to have_key(:street_address)
    # expect(results[:fuel_stations][0]).to have_key(:zip)
  end
end
