require_relative "dwelling"
require_relative 'fillable'

class Apartment < Dwelling
  attr_reader :rent, :lease_start_date, :lease_end_date, :capacity
  attr_accessor :occupants
  include Fillable

  def initialize(adress, city_or_town, state, zip_code, rent, lease_start_date, lease_end_date, capacity)
    super(adress, city_or_town, state, zip_code)
    @rent = rent
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @occupants = []
    @capacity = capacity
  end

  def full?
    super(@occupants, @capacity)
  end

  def add(first_name, last_name)
    if !full?
      super(@occupants, Occupant.new(first_name, last_name))
    end
  end

  def remove
    super(@occupants)
  end
end
