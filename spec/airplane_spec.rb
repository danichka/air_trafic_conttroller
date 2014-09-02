require "spec_helper"
require_relative "../app/airplane"

describe Airplane do

it "returns the string" do
  airplane = Airplane.new(model: "TU-144")
  airplane.model.should == "TU-144"
end

end