class House < Dwelling
  attr_reader :asking_price

  def initialize(adress, city_or_town, state, zip_code, asking_price)
    super(adress, city_or_town, state, zip_code)
    @asking_price = asking_price
  end
end
