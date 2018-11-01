require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'it returns a working bike' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'allows user to see if a bike has been docked' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe "#release_bike" do
    it "return error if station is empty" do
      expect {subject.release_bike}.to raise_error "Station is empty"
    end
  end

end
