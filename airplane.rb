class Airplane

  def initialize
    @model = "TU-144"
    @passenger = 100
    @airline = "Aeroflot"
  end
  
  attr_reader :airline
  attr_writer :airline


  #def airline
    #return @airline
  #end 

  #def airline=(airline_name)
    #@airline = airline_name
  #end

end