class Airplane

  def initialize
    @model     = "TU-144"
    @passenger = 100
    @airline   = "Aeroflot"
    @runway    = Runway.new #создаем объект класса Runway
    @terminal  = Terminal.new
  end
  
 
  attr_reader :airline, :model, :passenger, :runway
  attr_writer :airline, :model, :passenger, :runway


  def airline_inf1 # c помощью #{} возвращаем несколько свойств из других классов в строке
    return "#{@airline} #{@model} #{@runway.direction} #{@passenger} #{@terminal.sector} #{@terminal.number}"
  end 


end