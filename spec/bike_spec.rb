require 'bike'

describe Bike do

  let(:bike) { Bike.new }

  it 'the bike should be working by default' do
    expect(bike.working).to eq true
  end

  it 'user can report bike as broken' do
    expect(bike).to respond_to(:report_as_not_working)
  end

  it 'allows a user to view if a bike is not working' do
    bike.report_as_not_working
    expect(bike.working).to eq false
  end

end
