require_relative 'bike.rb'

class DockingStation
  attr_reader :bikes_docked

  def initialize
    @bikes_docked = []
  end

  def release_bike
    raise StandardError if empty?
    Bike.new
  end

  def dock_bike(name)
    raise StandardError if full?
    @name = name
    @bikes_docked << name
  end

  private

  def full?
    @bikes_docked.size >= 20 ? true : false
  end

  def empty?
    @bikes_docked.size < 1 ? true : false
  end

end
