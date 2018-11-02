require_relative 'bike'

class DockingStation
  attr_reader :bike_rack

  DEFAULT_CAPACITY = 20

  def initialize
    @bike_rack = []
  end

  def release_bike
    fail "Station is empty" if bike_rack.empty?
    bike_rack.pop
  end

  def dock(bike)
    fail "Station is full" if full?
    bike_rack << bike
  end

  private

  def full?
     bike_rack.size >=  DEFAULT_CAPACITY
  end

end
