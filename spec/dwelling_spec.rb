require 'spec_helper'

describe "Dwelling" do
  let(:dwelling) { dwelling = Dwelling.new("861 Melfa Crescent", "Ottawa", "Ontario", "K4D 2L8") }

  it "should have an adress" do
    expect(dwelling.adress).to eq("861 Melfa Crescent")
  end

  it "should have a city or town" do
    expect(dwelling.city_or_town).to eq("Ottawa")
  end

  it "should have a state or province" do
    expect(dwelling.state).to eq("Ontario")
  end

  it "should have a postal code" do
    expect(dwelling.zip_code).to eq("K4D 2L8")
  end

end
