require 'docking_station'

describe DockingStation do

  let(:dockingstation) { DockingStation.new }

  describe "#release_bike" do
    it "return error if station is empty" do
      expect {dockingstation.release_bike}.to raise_error "Station is empty"
    end

    it "would return an error when there are no working bikes left" do
      bike = Bike.new
      bike.report_as_not_working
      dockingstation.dock(bike)
      expect{dockingstation.release_bike}.to raise_error "No working bikes left"
    end

    it "allows users to release a working bike" do
      working_bike = Bike.new
      broken_bike = Bike.new.report_as_not_working
      dockingstation.dock(working_bike)
      dockingstation.dock(broken_bike)
      expect(dockingstation.release_bike.working).to eq true
    end
  end

  describe "#dock" do
    it "returns an error when the bike rack is full" do
      DockingStation::DEFAULT_CAPACITY.times { dockingstation.dock(Bike.new) }
      expect {dockingstation.dock(Bike.new)}.to raise_error "Station is full"
    end

    it 'allows user to see if a bike has been docked' do
      bike = Bike.new
      dockingstation.dock(bike)
      expect(dockingstation.bike_rack.include?(bike)).to eq true
    end
  end

  describe "#initialize" do
    it 'allows a user to specify a capacity when creating a station' do
      expect(DockingStation).to respond_to(:new).with(1).argument
    end

    it 'sets a default capacity when no capacity is specified' do
      expect(dockingstation.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

end
