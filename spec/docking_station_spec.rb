require 'docking_station'
describe DockingStation do
  it 'expects DockingStation instances to respond to release_bike' do
    expect(DockingStation.new).to respond_to :release_bike
  end

#subject = DockingStation.new
it { is_expected.to respond_to :release_bike}
end
