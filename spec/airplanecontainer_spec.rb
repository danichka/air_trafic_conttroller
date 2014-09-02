require "spec_helper"
require_relative "../app/airplanecontainer"
require_relative "../app/radar"
require_relative "../app/terminal"

class AirplaneBox
  include AirplaneContainer

  def initialize
    @airplanes = []
  end
end

describe AirplaneContainer do
  
  before(:each) do
    @airplane = AirplaneBox.new
    @airplane1 = AirplaneBox.new
    @airplane2 = AirplaneBox.new
  end

  it "adds the object to the array" do
    @airplane.add_airplane(@airplane1)
    @airplane.add_airplane(@airplane2)
    @airplane.airplanes.should have(2).airplanes
  end

end