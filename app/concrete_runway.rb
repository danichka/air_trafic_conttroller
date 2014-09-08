class ConcreteRunway < Runway

  def initialize(options)
    @length    = options[:length]
    super 
  end

  def length_controller
    raise "Critically small length of the runway." if @length <=350
  end

end