class Station
  attr_reader :name,
              :street,
              :city,
              :zip,
              :fuel_type,
              :state,
              :distance,
              :access_times

  def initialize(station_info)
    @station_info = station_info[:fuel_stations][0]
    @name = @station_info[:station_name]
    @fuel_type = @station_info[:fuel_type_code]
    @street = @station_info[:street_address]
    @distance = @station_info[:distance]
    @city = @station_info[:city]
    @zip = @station_info[:zip]
    @state = @station_info[:state]
    @fuel = @station_info[:fuel_type_code]
    @access_times = @station_info[:access_days_time]
  end

  def address
    "#{street} #{city} #{state} #{zip}"
  end
end
