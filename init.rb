require_relative "airplane"
require_relative "radar"
require_relative "runway"
require_relative "terminal"



airplane1 = Airplane.new
airplane2 = Airplane.new

#puts airplane1.airline
airplane1.airline = "Airfrance"
puts airplane1.airline

#puts airplane2.airline
airplane2.airline = "Transaero"
puts airplane2.airline



runway1 = Runway.new #вызываем объект класса
runway2 = Runway.new

runway1.direction = "240º" #присваиваем объекту класса runway свойство rate (курс в градусах)
puts runway1.direction

puts runway2.direction