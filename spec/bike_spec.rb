require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }

  it 'bikes are working' do
    bike = Bike.new
    expect(bike).to be_working
  end

end
