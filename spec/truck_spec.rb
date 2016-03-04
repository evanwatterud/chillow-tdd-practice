require 'spec_helper'

describe "Truck" do
  let(:truck) { Truck.new(1) }

  it "should have a capacity" do
    expect(truck.capacity).to eq(1)
  end

  it "should have an array to add boxes to" do
    expect(truck.boxes).to be_a(Array)
  end

  describe "#add_box" do
    it "should add a box to the boxes array" do
      truck.add(Occupant.new("Evan", "Watterud"))

      expect(truck.boxes.length).to eq(1)
      expect(truck.boxes[0]).to be_a(Box)
    end
  end

  describe "#remove_box" do
    it "should remove a box from the boxes array" do
      truck.remove

      expect(truck.boxes.empty?).to eq(true)
    end
  end

  describe "#full?" do
    it "should return true if the boxes array is full" do
      truck.add(Occupant.new("Evan", "Watterud"))

      expect(truck.full?).to eq(true)
    end

    it "should return false if the boxes array isn't full" do
      truck.remove

      expect(truck.full?).to eq(false)
    end
  end

  describe "#unload_all" do
    it "should delete all boxes with the same owner" do
      truck.add(Occupant.new("Evan", "Watterud"))
      truck.add(Occupant.new("Evan", "Watterud"))
      truck.add(Occupant.new("Evan", "Watterud"))
      truck.add(Occupant.new("Evan", "Watterud"))
      truck.add(Occupant.new("Karsten", "Watterud"))

      truck.unload_all(Occupant.new("Evan", "Watterud"))

      expect(truck.boxes.length).to eq(1)
    end
  end
end
