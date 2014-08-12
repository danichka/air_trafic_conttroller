require_relative "airplane"
require_relative "radar"
require_relative "runway"
require_relative "terminal"


airplane1 = Airplane.new
airplane2 = Airplane.new
airplane3 = Airplane.new
airplane4 = Airplane.new

runway1   = Runway.new #вызываем объект класса
runway2   = Runway.new

radar_inf = Radar.new({ :radius => "200", :frequency => "0,5"  })

terminal_inf = Terminal.new({ :sector => "A", :number => "3" })


puts radar_inf.radius
puts radar_inf.frequency

puts "\n"

airplane1.airline
puts airplane1.airline

puts airplane1.model

runway1.direction = "240º" #присваиваем объекту класса runway свойство rate (курс в градусах) 
puts runway1.direction     #assigned to the object class property runway rate (rate in degrees)

runway1.pavement = "Concrete"
puts runway1.pavement 

runway1.length = 850
puts runway1.length

puts terminal_inf.sector
puts terminal_inf.number

puts "\n"

puts airplane2.airline
airplane2.airline = "Transaero"
puts airplane2.airline

airplane2.model = "Mig-29"
puts airplane2.model

puts runway2.direction

puts runway2.pavement

puts runway2.length

puts ""

#puts airplane3.airline_inf1 #возвращает иформацию о самолете
 