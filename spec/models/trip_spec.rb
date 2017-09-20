require 'models/trip'
require 'time'

describe Trip do
  describe '.initialize' do    
    context 'given properly formatted parameters' do
      trip = Trip.new('0100', '0200', 34.1)
      it 'returns trip object' do
        expect(trip.start).to eql Time.strptime('0100', '%H%M')
        expect(trip.stop).to eql Time.strptime('0200', '%H%M')
        expect(trip.miles).to eql 34.1
      end
    end
    
    context 'given times with colons and miles without decimal' do
      trip = Trip.new('01:00', '02:00', 50)
      it 'returns trip object' do
        expect(trip.start).to eql Time.strptime('0100', '%H%M')
        expect(trip.stop).to eql Time.strptime('0200', '%H%M')
        expect(trip.miles).to eql 50.0
      end
    end
  end
end