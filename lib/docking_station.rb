require_relative 'bike'

class DockingStation
  attr_reader :bike_rack, :capacity

  def initialize
    @capacity = 20
    @bike_rack = []
  end

  def release_bike
    fail "Station is empty" if @bike_rack.empty?
    @bike_rack
  end

  def dock(bike)
    fail "Station is full" if @bike_rack.size >= @capacity
    @bike_rack << bike
  end

end
