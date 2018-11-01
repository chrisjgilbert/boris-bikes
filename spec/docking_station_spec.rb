require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  describe "#release_bike" do
    it "return error if station is empty" do
      expect {subject.release_bike}.to raise_error "Station is empty"
    end
  end

  describe "#dock" do
    it "returns an error when the bike rack is full" do
      20.times { subject.dock(Bike.new) }
      expect {subject.dock("BMC")}.to raise_error "Station is full"
    end
  end

  it 'allows user to see if a bike has been docked' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike_rack.include?(bike)).to eq true
  end

end
