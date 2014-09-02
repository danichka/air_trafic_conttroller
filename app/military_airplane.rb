class MilitaryAirplane < Airplane

  def initialize(options)
    @bombs_no = options[:bombs_no]
    super
  end

  attr_accessor :bombs_no
end