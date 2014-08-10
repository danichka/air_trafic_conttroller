class Runway

	def initialize
		@direction = "360º"
		@pavement = "asphalt"
		@length = 500
	end

	def direction
		return @direction
	end

	def direction=(direction_degree)
		@direction = direction_degree
	end

end