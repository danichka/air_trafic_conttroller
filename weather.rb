class Weather
 
  def initialize
 	  @weather_conditions  = ["rain", "hail", "fog", "clear"]
    @temperature         = :temperature
  end

  attr_reader :weather_conditions, :temperature

  def weather_inf
  	@weather_conditions[rand(weather_conditions.size)]
  end

  #def temperature_inf
  #	@temperature
  #end

end