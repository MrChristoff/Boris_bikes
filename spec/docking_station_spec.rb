require 'docking_station'

describe DockingStation do

  before do
    @station = DockingStation.new
  end

  it "should respond to release bike" do
    expect(@station).to respond_to(:release_bike)
  end

  it "should return a working bike" do
    bike = @station.release_bike
    expect(bike.working?).to eq (true)
  end

  it "should check that the dock_bike method exists" do
    expect(@station).to respond_to(:dock_bike)
  end

  it "passes when the arguments match" do
    bike = @station.dock_bike("name")
    expect(bike).to eql ("name")
  end

  it "checks the bikes_docked Array is not empty" do

    expect {
      @station.release_bike
    }.to raise_error(StandardError)
  end
end
