require 'spec_helper'

describe "House" do
  let(:house) { House.new("861 Melfa Crescent", "Ottawa", "Ontario", "K4D 2L8", 800000) }

  it "should have an adress" do
    expect(house.adress).to eq("861 Melfa Crescent")
  end

  it "should have a city or town" do
    expect(house.city_or_town).to eq("Ottawa")
  end

  it "should have a zip code" do
    expect(house.zip_code).to eq("K4D 2L8")
  end

  it "should have a state" do
    expect(house.state).to eq("Ontario")
  end

  it "should have an asking price" do
    expect(house.asking_price).to eq(800000)
  end

end
