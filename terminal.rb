class Terminal

  def initialize(options)
   	@sector    = options[:sector   ]
   	@number    = options[:number   ]
    @bandwidth = options[:bandwidth]
    @airplanes = []
  end
  
  include AddArrey  
  
  def remove_airplane(gate_number)
    yield(@airplanes[gate_number]) if block_given?
    @airplanes.delete_at(gate_number)
  end

  attr_reader :bandwidth, :sector, :number, :airplanes
  attr_writer :bandwidth, :sector, :number

end