class Runway

  def initialize(options)
    @direction = options[:direction]
    @pavement  = options[:pavement ]
  end
  
  attr_accessor :direction, :pavement, :length
  
end