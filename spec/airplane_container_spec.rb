require "spec_helper"
require_relative "../app/airplane"
require_relative "../app/airplane_container"
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
    @container = AirBox.new
    @airplane1 = MilitaryAirplane.new(model: "Mig-29", airline: "ВВС", bombs_no: 2, speed: 1300, fuel_quantity: 35)
    @airplane2 = MilitaryAirplane.new(model: "Mig-29", airline: "ВВС", bombs_no: 2, speed: 1300, fuel_quantity: 35)

  end
  
  it "adds plane to the array" do
    @container.add_airplane(@airplane1)
    @container.add_airplane(@airplane2)
    @container.airplanes.should have(2).airplane
  end

  it "removes airplane" do
    @container.add_airplane(@airplane1)
    @container.remove_airplane(0) 
    expect(@container.airplanes).to have(0).airplane
  end

  it "doesn't allow to add anything but airplanes" do
    expect( -> { @container.add_airplane("not airplane") }).to raise_error
  end

end  