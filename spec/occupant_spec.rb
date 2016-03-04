require 'spec_helper'

describe Occupant do
  let(:occupant) { Occupant.new("Evan", "Watterud") }

  it "has a first name" do
    expect(occupant.first_name).to eq("Evan")
  end

  it "has a last name" do
    expect(occupant.last_name).to eq("Watterud")
  end
end
