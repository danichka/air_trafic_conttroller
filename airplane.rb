class Airplane

	def initialize(options)
    @model     = options[:model    ]
    @airline   = options[:airline  ]
    @passenger = options[:passenger]
    @speed     = options[:speed    ] 
  end

attr_accessor :model, :airline, :passenger, :speed

end