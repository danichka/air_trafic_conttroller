class Runway

  def initialize(options)
    @direction = options[:direction]
    @pavement  = options[:pavement ]
    @length    = options[:length   ]
  end

  attr_accessor :direction, :pavement, :length
  
end