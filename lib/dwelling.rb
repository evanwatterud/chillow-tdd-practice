class Dwelling
  attr_reader :adress, :city_or_town, :state, :zip_code

  def initialize(adress, city_or_town, state, zip_code)
    @adress = adress
    @city_or_town = city_or_town
    @state = state
    @zip_code = zip_code
  end
end
