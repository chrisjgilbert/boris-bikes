require_relative 'bike'

class DockingStation
  attr_reader :bike_rack, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bike_rack = []
    @capacity = capacity
  end

  def release_bike
    fail "Station is empty" if @bike_rack.empty?
    fail "No working bikes left" if all_broken?
    @bike_rack.pop
  end

  def dock(bike)
    fail "Station is full" if full?
    @bike_rack << bike
  end

  private

  def full?
     @bike_rack.size >=  DEFAULT_CAPACITY
  end

  def all_broken?
    @bike_rack.all? { |bike| bike.working == false }
  end

end
