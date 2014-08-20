class Weather
 
  def initialize
 	@weather_conditions  = ["rain", "hail", "fog", "clear"]
  end

  attr_reader :weather_conditions

  def weather
  	weather_conditions[rand(weather_conditions.size)]
  end

  
end