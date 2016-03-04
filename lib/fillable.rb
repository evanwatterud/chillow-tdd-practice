module Fillable
  def full?(array, capacity)
    if array.length >= capacity
      return true
    end
    false
  end

  def add(array, object)
    array << object
  end

  def remove(array)
    if array.length > 0
      array.shift
    end
  end
end
