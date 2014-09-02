class CivilAirplane < Airplane
  
  def initialize(options)
    @seats_no = options[:seats_no] 
    super
  end
  
  attr_accessor :seats_no
end