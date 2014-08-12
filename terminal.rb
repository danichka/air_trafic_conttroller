class Terminal

  def initialize(inf)
   	@sector      = inf[:sector   ]
   	@number      = inf[:number   ]
    @bandwidth   = inf[:bandwidth]
  end
  
  attr_accessor :sector, :number
  attr_reader   :bandwidth
 
end