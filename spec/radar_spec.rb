require "spec_helper"
require_relative "../app/radar"

describe Radar do
  
  before(:each) do
    @radar = Radar.new(radius: 10)
  end

  it "the possibility of adding to the array of aircraft" do
  
  end

  it "returns the number" do
    @radar.radius.should == 10
  end

  it "does not return a string" do
    @radar.radius.should_not == ""
  end  
end