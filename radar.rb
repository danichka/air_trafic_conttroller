class Radar

	def initialize(options)
    @radius    = options[:radius   ] 
    @frequency = options[:frequency]
    @airplanes = []
  end

  include AddArrey
  
  def filter(s)
    @airplanes.select { |a| a <= (s) }
  end

attr_accessor :radius, :frequency, :airplanes

end