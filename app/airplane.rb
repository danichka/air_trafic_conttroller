class Airplane

  def initialize(options)
    @model         = options[:model  ]
    @airline       = options[:airline]
    @speed         = options[:speed  ] 
    @fuel_quantity = options[:fuel_quantity]
  end

  attr_accessor :model, :airline, :speed, :fuel_quantity

end