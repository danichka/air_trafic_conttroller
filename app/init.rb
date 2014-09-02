require_relative "airplanecontainer"
require_relative "airplane"
require_relative "civil_airplane"
require_relative "military_airplane"
require_relative "radar"
require_relative "runway"
require_relative "concrete_runway"
require_relative "dirt_runway"
require_relative "asphalt_runway"
require_relative "terminal" 
require_relative "weather"

airplane1 = MilitaryAirplane.new(model: "Mig-29", airline: "ВВС", bombs_no: 2, speed: 1300, fuel_quantity: 35)
airplane2 = CivilAirplane.new(model: "TU-144", airline: "Aeroflot", seats_no: 300, speed: 850, fuel_quantity: 40)
airplane3 = MilitaryAirplane.new(model: "T-50", airline: "ВВС" , bombs_no: 4, speed: 980)
airplane4 = CivilAirplane.new(model: "Airobus", airline: "Transaero", seats_no: 1, speed: 1050)

runway1   = ConcreteRunway.new(direction: 240, pavement: "concrete", length: 800)
runway2   = AsphaltRunway.new(direction: 125, pavement:"asphalt", length: 1260)

radar = Radar.new(radius: 600)

terminal = Terminal.new(sector: "A", number: 3, bandwidth: 30)

weather = Weather.new

puts radar.frequency

puts "\n"

puts airplane1.model
puts airplane1.airline
puts airplane1.bombs_no
puts airplane1.speed

puts runway1.direction #assigned to the object class property runway rate (rate in degrees)
puts runway1.pavement 
puts runway1.length
puts runway1.length_controller
puts "\n"

puts airplane2.model
puts airplane2.airline
puts airplane2.seats_no
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
terminal.add_airplane(airplane3)
terminal.add_airplane(airplane4)

terminal.remove_airplane(rand(4)) { |a| puts "removing " + a.model }
p terminal.airplanes

puts ""

radar.add_airplane(airplane1)
radar.add_airplane(airplane2)
radar.add_airplane(airplane3)
radar.add_airplane(airplane4)

p radar.filter_airplanes { |a| a.speed <= 1000 }

# puts ""