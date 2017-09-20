require 'time'

class Trip
  attr_accessor :start, :stop, :miles
  
  def initialize(start, stop, miles)
    start.delete!(':')
    stop.delete!(':')
    @start = Time.strptime(start, '%H%M')
    @stop = Time.strptime(stop, '%H%M')
    @miles = miles.to_f
  end
end