require "spec_helper"
require_relative "../app/airplane"

describe Airplane do

  it "returns the string" do
    airplane = Airplane.new(model: "TU-144", airline: "Aeroflot", speed: 850, fuel_quantity: 40)
    expect(airplane.model).to         eq("TU-144")
    expect(airplane.airline).to       eq("Aeroflot")
    expect(airplane.speed).to         eq(850)
    expect(airplane.fuel_quantity).to eq(40)
  end

end