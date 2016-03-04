require 'spec_helper'

describe "Apartment" do
  let(:apartment) { Apartment.new("861 Melfa Crescent", "Ottawa", "Ontario", "K4D 2L8", 600, 2010, 2020, 1) }

  it "should have an adress" do
    expect(apartment.adress).to eq("861 Melfa Crescent")
  end

  it "should have a city or town" do
    expect(apartment.city_or_town).to eq("Ottawa")
  end

  it "should have a zip code" do
    expect(apartment.zip_code).to eq("K4D 2L8")
  end

  it "should have a state" do
    expect(apartment.state).to eq("Ontario")
  end

  it "should have a rent cost" do
    expect(apartment.rent).to eq(600)
  end

  it "should have a lease start date" do
    expect(apartment.lease_start_date).to eq(2010)
  end

  it "should have a lease end date" do
    expect(apartment.lease_end_date).to eq(2020)
  end

  it "should have an occupants array" do
    expect(apartment.occupants).to be_a(Array)
  end

  describe "#add_roommate" do
    it "should add an occupant to the occupants array" do
      apartment.add("Evan", "Watterud")

      expect(apartment.occupants.length).to eq(1)
      expect(apartment.occupants[0]).to be_a(Occupant)
    end
  end

  describe "#remove_roommate" do
    it "should remove an occupant" do
      apartment.remove

      expect(apartment.occupants.empty?).to eq(true)
    end
  end

  describe "#full?" do
    it "should return true when full" do
      apartment.add("Evan", "Watterud")

      expect(apartment.full?).to eq(true)
    end

    it "should return false when not full" do
      apartment.remove

      expect(apartment.full?).to eq(false)
    end
  end

end
