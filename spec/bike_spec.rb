require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }

  it 'the bike should be working' do
    bike = Bike.new
    expect(bike).to be_working
  end

end
