class Radar

  def initialize(options)
    @radius    = options[:radius   ] 
    @frequency = options[:frequency]
    @airplanes = []
  end

  include AddAirplane
  
  def filter(parameter)
    @airplanes.select { |a| a.speed <= parameter }
  end

attr_accessor :radius, :frequency, :airplanes

end