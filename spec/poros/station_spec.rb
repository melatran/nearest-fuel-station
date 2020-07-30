require 'rails_helper'

describe Station do
  it 'initializes with attributes' do
    service = NRELService.new
    station_info = service.get_nearest_station("1331 17th St LL100, Denver, CO 80202")
    station = Station.new(station_info)

    expect(station).to be_a(Station)
    expect(station.name).to eq("Seventeenth Street Plaza")
    expect(station.address).to eq("1225 17th St. Denver CO 80202")
    expect(station.fuel_type).to eq("ELEC")
    expect(station.access_times).to eq("MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified")
  end
end
