module AirplaneContainer

  attr_reader :airplanes

  def add_airplane(airplane)
    @airplanes << airplane 
    unless airplane.is_a?(Airplane)    
      raise "invalid airplane" 
    end
  end

  def remove_airplane(gate_number)
    yield(@airplanes[gate_number]) if block_given?
    @airplanes.delete_at(gate_number)
  end

end