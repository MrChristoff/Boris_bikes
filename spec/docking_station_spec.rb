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

  it "ensures dock_bike requires 1 argument" do
    bike = Bike.new
    @station.dock_bike(bike)
    expect(@station.bikes_docked[0]).to eq (bike)
  end

  it "ensures error is raised if bikes_docked is empty" do

    expect {
      @station.release_bike
    }.to raise_error(StandardError)
  end

  it "ensures error is raised if bikes_docked has a bike" do
    @station.dock_bike("bike1")
    expect {
      @station.dock_bike("bike2")
    }.to raise_error(StandardError)
  end
end
