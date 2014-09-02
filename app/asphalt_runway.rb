class AsphaltRunway < Runway
  
  def initialize(options)
    @length = options[:length]
    super
  end
  
end