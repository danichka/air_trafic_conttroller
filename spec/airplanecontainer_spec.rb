require "spec_helper"
require_relative "../app/airplane"
require_relative "../app/airplanecontainer"
require_relative "../app/radar"
require_relative "../app/terminal"
require_relative "../app/military_airplane"

class AirBox
  include AirplaneContainer
  
  def initialize
    @airplanes = []
  end
end

describe AirplaneContainer do

  before(:each) do
    @airplane = AirBox.new
    @airplane1 = MilitaryAirplane.new(model: "Mig-29", airline: "ВВС", bombs_no: 2, speed: 1300, fuel_quantity: 35)
    @airplane2 = MilitaryAirplane.new(model: "Mig-29", airline: "ВВС", bombs_no: 2, speed: 1300, fuel_quantity: 35)

  end
  
  it "plane added to the array" do
    @airplane.add_airplane(@airplane1)
    @airplane.add_airplane(@airplane2)
    @airplane.airplanes.should have(2).airplane
  end

  it "remov airplane" do
    @airplane.add_airplane(@airplane1)
    @airplane.remove_airplane(0) 
    @airplane.airplanes.should have(0).airplane
  end

end  