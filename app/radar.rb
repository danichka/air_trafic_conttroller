require_relative "airplane_container"

class Radar
  include AirplaneContainer

  def initialize(options)
    @radius    = options[:radius   ] 
    @frequency = options[:frequency]
    @airplanes = []
  end

  def filter_airplanes
    @airplanes.select { |a| yield(a) }
  end

  attr_accessor :radius, :frequency, :airplanes

end