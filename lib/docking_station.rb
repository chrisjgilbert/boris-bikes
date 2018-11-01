require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @capacity = 0
  end

  def release_bike
    fail "Station is empty" unless @bike
    @bike
  end

  def dock(bike)
    fail "Station is full" unless @capacity < 1
    @capacity += 1
    @bike = bike
  end

end
