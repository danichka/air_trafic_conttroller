class Terminal

  def initialize
   	@sector = "A"
   	@number = "1"
    @bandwidth = 1000
  end
  
  attr_accessor :sector, :number
  attr_reader   :bandwidth
 
end