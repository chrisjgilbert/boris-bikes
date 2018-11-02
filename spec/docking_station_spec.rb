require 'docking_station'

describe DockingStation do

  let(:dockingstation) { DockingStation.new }

  describe "#release_bike" do
    it "return error if station is empty" do
      expect {dockingstation.release_bike}.to raise_error "Station is empty"
    end
  end

  describe "#dock" do
    it "returns an error when the bike rack is full" do
      20.times { dockingstation.dock(Bike.new) }
      expect {dockingstation.dock("BMC")}.to raise_error "Station is full"
    end
  end

  it 'allows user to see if a bike has been docked' do
    bike = Bike.new
    dockingstation.dock(bike)
    expect(dockingstation.bike_rack.include?(bike)).to eq true
  end

end
