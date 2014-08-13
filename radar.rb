class Radar

	def initialize(options)
    @radius              = options[ :radius    ] 
    @frequency           = options[ :frequency ]
  end
  
  attr_reader :radius, :frequency
  attr_writer :radius, :frequency
  
end