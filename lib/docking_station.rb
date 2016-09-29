require_relative 'bike.rb'

class DockingStation
  attr_reader :bikes_docked

  def initialize
    @bikes_docked = []
  end

  def release_bike
    raise StandardError if @bikes_docked.size < 1
    Bike.new
  end

  def dock_bike(name)
    @name = name
  end

end
