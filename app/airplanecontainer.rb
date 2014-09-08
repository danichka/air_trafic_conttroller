module AirplaneContainer

  attr_reader :airplanes

  def add_airplane(airplane)
    @airplanes << airplane 
    raise "invalid airplane бу-бу-бу" #if airplane.is_a? CivilAirplane
    # else airplane.is_a? MilitaryAirplane
    end
  end

  def remove_airplane(gate_number)
    yield(@airplanes[gate_number]) if block_given?
    @airplanes.delete_at(gate_number)
  end

end