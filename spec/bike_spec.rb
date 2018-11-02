require 'bike'

describe Bike do

  let(:bike) { Bike.new }

  it 'the bike should be working' do
    expect(bike).to be_working
  end

end
