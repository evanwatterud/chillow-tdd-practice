require 'spec_helper'

describe "Box" do
  let(:box) { Box.new(Occupant.new("Evan", "Watterud")) }

  it "should have an owner that's an Occupant" do
    expect(box.owner).to be_a(Occupant)
  end
end
