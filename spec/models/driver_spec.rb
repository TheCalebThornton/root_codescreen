require 'models/driver'
require 'models/trip'

describe Driver do
  describe '.get_trip_stats' do    
    context 'given no trips' do
      driver = Driver.new('ricky')
      it 'returns nil' do
        expect(driver.get_trip_stats).to eql nil
      end
    end
    
    context 'given one trip' do
      trip1 = Trip.new('06:59', '12:20', 21.0)
      driver = Driver.new('ricky', [trip1])
      it 'returns trip statistics for the driver' do
        result = driver.get_trip_stats
        result.miles
        result.mph
      end
    end
    
    context 'given multiple trips' do
      driver = Driver.new('ricky')
      it 'returns nil' do
        expect(driver.get_trip_stats).to eql nil
      end
    end
  end
end