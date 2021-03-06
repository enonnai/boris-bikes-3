require 'docking_station'

describe DockingStation do

  it 'expects DockingStation instances to respond to release_bike' do
    expect(DockingStation.new).to respond_to :release_bike
  end

  it { is_expected.to respond_to :release_bike}

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it {is_expected.to respond_to(:bike) }

  it 'returns the docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
