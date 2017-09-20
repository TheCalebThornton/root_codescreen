class Driver
  attr_accessor :name, :trips
  
  def initialize(name, trips = [])
    @name = name
    @trips = trips
  end
  
  def get_trip_stats
    stats = nil
    @trips.each do
      
    end
    stats
  end
end