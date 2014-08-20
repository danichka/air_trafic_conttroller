require_relative "module"
require_relative "airplane"
require_relative "radar"
require_relative "runway"
require_relative "terminal" 
require_relative "weather"

 
airplane1 = Airplane.new(model: "Mig-29", airline: "ВВС", passenger: 1, speed: 1300)
airplane2 = Airplane.new(model: "TU-144", airline: "Aeroflot", passenger: 300, speed: 850)

runway1   = Runway.new(direction: 240, pavement: "asfalt", length: 980)
runway2   = Runway.new(direction: 125, pavement:"concrete", length: 1260)

radar = Radar.new(radius: "200", frequency: "0,5")

terminal = Terminal.new(sector: "A", number: "3", bandwidth: 30)

weather = Weather.new

puts radar.radius
puts radar.frequency

puts "\n"

puts airplane1.model
puts airplane1.airline
puts airplane1.passenger
puts airplane1.speed

puts runway1.direction #assigned to the object class property runway rate (rate in degrees)
puts runway1.pavement 
puts runway1.length

puts "\n"

puts airplane2.model
puts airplane2.airline
puts airplane2.passenger
puts airplane2.speed

puts runway2.direction
puts runway2.pavement
puts runway2.length
 
puts ""

puts weather.weather

puts rand(10..30).to_s+"º"

puts "\n"

puts terminal.sector
puts terminal.number
puts terminal.bandwidth

terminal.add_airplane(airplane1)
terminal.add_airplane(airplane2)
terminal.remove_airplane(rand(4)) { |a| puts "removing " + a.model }
p terminal.airplanes

puts ""

radar.add_airplane(airplane1.speed)
radar.add_airplane(airplane2.speed)
p radar.filter(1000)