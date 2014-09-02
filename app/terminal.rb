class Terminal
  include AirplaneContainer
  
  def initialize(options)
    @sector    = options[:sector   ]
    @number    = options[:number   ]
    @bandwidth = options[:bandwidth]
    @airplanes = []
  end
  
    

  attr_reader :bandwidth, :sector, :number, :airplanes
  attr_writer :bandwidth, :sector, :number, :airplanes

end