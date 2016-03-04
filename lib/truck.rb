require_relative 'fillable'

class Truck
  attr_reader :capacity
  attr_accessor :boxes
  include Fillable

  def initialize(capacity)
    @capacity = capacity
    @boxes = []
  end

  def add(owner)
    if !full?
      super(@boxes, Box.new(owner))
    end
  end

  def remove
    super(@boxes)
  end

  def full?
    super(@boxes, @capacity)
  end

  def unload_all(owner)
    @boxes.each_with_index do |box, index|
      if box.owner == owner
        @boxes.delete_at(index)
      end
    end
  end
end
