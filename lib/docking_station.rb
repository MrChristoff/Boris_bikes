require_relative 'bike.rb'

class DockingStation
  attr_reader :bikes_docked

  def initialize
    @bikes_docked = []
  end

  def release_bike
    Bike.new
  end

  def dock_bike(name)
    @name = name
  end

end
